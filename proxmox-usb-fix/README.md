<h3 align="center">Proxmox USB Fix</h3>

<div align="center">

[//]: # "[![Status](https://img.shields.io/badge/status-active-success.svg)]()"
[//]: # "[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)"
[//]: # "[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)"
[//]: # "[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)"

</div>

---

<p align="center"> Script to restart usb hub so that USB to eth device is recognised. Slighty hacky but works
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [Built Using](#built_using)
- [TODO](../TODO.md)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

Laptop running proxmox not picking up USB3 to Eth adaptor running the realtek r8153 firmware. this script will unbind and rebind the onbard usb hub so that it forces the system to find the usb adaptor. This is so that should a remote reboot be needed a phisical removal and reinsertion of the device isnt needed.

Cation must be made to ensure no mounted data drives are connected are needed during this script.

The script fires once proxmox has loaded.

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

You need to find the usb root hub ID which can be found by following the guide found here (https://zedt.eu/tech/linux/restarting-usb-subsystem-centos/)

copied below incase site dies
```
In cases like this, Linux (unlike Windows) can trigger a USB subsystem restart by deactivating and reactivating the USB controller(s).

The hardware ID(s) of the controllers differ from manufacturer to manufacturer and from hardware to hardware. So the first thing to do is find out the correct hardware ID(s).

Running

cd /sys/bus/pci/drivers/ehci_hcd
ls

returns a list of one or more controller IDs, in the form of 0000:00:xx.y.

Edit: For USB 3.0 controllers, use instead

cd /sys/bus/pci/drivers/xhci_hcd
ls

On my system which has two AMD USB controllers, the following IDs are found:

0000:00:12.2  0000:00:13.2  bind  module  new_id  remove_id  uevent  unbind

Now that the ID or IDs are known, you need to run a set of commands that trigger the disabling and re-enabling of that device. You can run this command for a specific controller (if you know which one) or for all controllers if you don’t have anything critical connected to the USB. The command is:

echo -n "0000:00:xx.y" > unbind

Remember to enable them back:

echo -n "0000:00:xx.y" > bind

where instead of xx.y you fill in the correct set of numbers to use the IDs discovered above.
```
```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running.

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo.

## 🔧 Running the tests <a name = "tests"></a>

Explain how to run the automated tests for this system.

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## 🎈 Usage <a name="usage"></a>

Add notes about how to use the system.

## 🚀 Deployment <a name = "deployment"></a>

Add additional notes about how to deploy this on a live system.

## ⛏️ Built Using <a name = "built_using"></a>

- [MongoDB](https://www.mongodb.com/) - Database
- [Express](https://expressjs.com/) - Server Framework
- [VueJs](https://vuejs.org/) - Web Framework
- [NodeJs](https://nodejs.org/en/) - Server Environment

## ✍️ Authors <a name = "authors"></a>

- [@kylelobo](https://github.com/kylelobo) - Idea & Initial work

See also the list of [contributors](https://github.com/kylelobo/The-Documentation-Compendium/contributors) who participated in this project.

## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Hat tip to anyone whose code was used
- Inspiration
- References
