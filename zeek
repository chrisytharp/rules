IDS
Zeek, formerly known as Bro, is an open-source NW sec tool. 
Does not claim to be an IDS but is a NW sec monitoring tool
Every time you provide a PCAP or live traffic to Zeek, it will convert it into protocol-specific logs. 
Capabilities: transforming NW packet captures into protocol-specific logs, monitoring & analyzing NW xfic using its own scripting language & file extraction

TSV
Zeek logs information in, tab-separated text files (TSVs) by default, ideal for postprocessing and analysis. Each log file contains a set of 
headers beginning with a hash character (#), followed by metadata about the trace or traffic capture. The following example shows a dns.log in the default
TSV format.
          #separator \x09
          #set_separator  ,
          #empty_field    (empty)
          #unset_field    -
          #path   dns
          #open   2020-06-05-14-48-32
          #fields ts      uid     id.orig_h       id.orig_p       id.resp_h       id.resp_p       proto   trans_id        rtt     query   qclass  qclass_name     qtypeqtype_name       rcode   rcode_name      AA      TC      RD      RA      Z       answers TTLs    rejected
          #types  time    string  addr    port    addr    port    enum    count   interval        string  count   string  count   string  count   string  bool    bool bool     bool    count   vector[string]  vector[interval]        bool
          1591367999.306059       CazOhH2qDUiJTWMCY       192.168.4.76    36844   192.168.4.1     53      udp     8555    -       testmyids.com   1       C_INTERNET   28       AAAA    0       NOERROR F       F       T       F       0       -       -       F
          1591367999.305988       CazOhH2qDUiJTWMCY       192.168.4.76    36844   192.168.4.1     53      udp     19671   0.066852        testmyids.com   1       C_INTERNET    1       A       0       NOERROR F       F       T       T       0       31.3.245.133    3600.000000     F
          #close  2020-06-05-14-48-32
JSON
While TSV is the default format of these logs, Zeek can be configured to produce alternative outputs. 
example DNS log

{"ts":1591367999.306059,"uid":"CMdzit1AMNsmfAIiQc","id.orig_h":"192.168.4.76","id.orig_p":36844,"id.resp_h":"192.168.4.1","id.resp_p":53,"proto":"udp","trans_id":8555,"query":"testmyids.com","qclass":1,"qclass_name":"C_INTERNET","qtype":28,"qtype_name":"AAAA","rcode":0,"rcode_name":"NOERROR","AA":false,"TC":false,"RD":true,"RA":false,"Z":0,"rejected":false}
{"ts":1591367999.305988,"uid":"CMdzit1AMNsmfAIiQc","id.orig_h":"192.168.4.76","id.orig_p":36844,"id.resp_h":"192.168.4.1","id.resp_p":53,"proto":"udp","trans_id":19671,"rtt":0.06685185432434082,"query":"testmyids.com","qclass":1,"qclass_name":"C_INTERNET","qtype":1,"qtype_name":"A","rcode":0,"rcode_name":"NOERROR","AA":false,"TC":false,"RD":true,"RA":true,"Z":0,"answers":["31.3.245.133"],"TTLs":[3600.0],"rejected":false}













