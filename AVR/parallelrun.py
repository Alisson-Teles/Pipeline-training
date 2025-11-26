import os
import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed

cpus = 8

# Folder containing your files
folder = "arquivos-compilados-avr-220"

# The command you want to run; just the executable part
command = "./rodar_seq_uniq_AVR.sh"  # Replace with your actual command

def run_command(file_path):
    # Pass the command and file path as a list
    print(file_path)
    result = subprocess.run([command, file_path], capture_output=True, text=True)
    #print(result.stdout)

# Get all files in the folder
files = [os.path.join(folder, f) for f in os.listdir(folder) if os.path.isfile(os.path.join(folder, f))]

# Run in parallel
with ThreadPoolExecutor(max_workers=cpus) as executor:  # adjust max_workers as needed
    futures = [executor.submit(run_command, f) for f in files]
    
    for future in as_completed(futures):
        future.result()
