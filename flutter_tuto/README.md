# Learning Flutter

## Setup

``` bash
yay -S dart
yay -S flutter

# Had problem with permission
sudo chmod -R 777 /etc/flutter

yay -S android-studio
# Install SDK from android-studio
# Also: Project > More Actions > SDK Manager > SDK Tools > Android Command-line Tools
# Also install suggested updates/plugins at the bottom right

flutter doctor
# Fix described problems

# For the virtual device to work
# For my desktop with AMD, bios SVM needed to be enabled
yay -S archlinux-keyring qemu virt-manager virt-viewer libguestfs
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
```

## Getting Started

You can create a project with `flutter create <PROJECT_NAME>`, then:
`Open android-studio > Open the project > Tools > Device Manager > Select/Start a phone`

To run the demo app, use `flutter run` from the project directory. It
should start the app on the virtual phone.
