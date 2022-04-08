IPS
Zeek, formerly known as Bro, is an open-source NW sec tool. 
Capabilities: transforming NW packet captures into protocol-specific logs, monitoring & analyzing NW xfic using its own scripting language & file extraction

Zeek is a versatile, passive NW sec monitoring tool used to support the detection of threats
used to support SIEM environments to perform:
                                                network monitoring
                                                incident response
                                                file extraction
                                                hashing
                                                forensics
                                                performance measurements
Zeek can be used for threat hunting, security architecture, forensics, vulnerability tracking, and more

How does it work?
Zeek converts raw packet capture traffic into comprehensive protocol-specific logs to process packet captures, it can be placed on a 'single host' to listen for 
NW xfic OR can provide stored packet captures for analysis as a minimum configuration. You can also provide a copy of your live network traffic through
network taps or a port-mirroring capable switch port. A common configuration involves setting Zeek to forward traffic to SIEM tools, for data analytics such as Splunk. 

Why use Zeek?
SIEM environments often have unstructured data due to the variety of sources involved, alongside a high volume of network traffic, which can be difficult and 
time-consuming to make sense of. With these problems come limited visibility of the network, which can slow down incident response times. This can cause further
damage as some attacks might go undetected for longer periods of time. 

This is where Zeek provides solutions. The tool's main features can be divided into three areas: 

Traffic logging
Zeek generates rich and comprehensive, protocol-specific logs for all traffic that passes through the entire network. In return, this divides the high volumes of 
traffic into segments, making it a lot easier to search for a specific set of network data. It also creates consistent, structured data with appropriate formatting 
that can be easily digested into well-known SIEMs. 

File extraction
Zeek offers file extraction too. Hundreds of different types of files cross the network daily, some of which are suspicious. Zeek can extract files of interest and 
save them for later forensic analysis or even send them directly to a file analysis tool. 

Analysis automation
Network data analysis can be automated, as Zeek has its own flexible scripting language that allows you to write scripts tailored to what you want to observe within 
your network. Zeek can also be used to add structure to inconsistent data sources, provide more visibility across the network, automate file extraction, monitor
traffic, and give detection alerts based on specific network behavior. 

Zeek frameworks
To date, Zeek includes 14 software frameworks that provide additional functionality and enhance the tool's scripting capabilities. Some frameworks are core to Zeek
and run in almost every installation, such as the logging framework (used for traffic logging), while others target more specific use cases. Several of them will
be covered later in this series. In the meantime, you can see the official Zeek Frameworks Documentation for an extensive list of the frameworks. 
