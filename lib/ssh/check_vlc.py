def check_vlc (time='1'):
    with open('/home/ubuntu/vlc_'+time+'.txt','r') as f:
        a= f.read().count('error')        
        if 300>a>0:
            print "FAIL"
         
        elif 500>a>300:
            print "PASS" 
       
        else: 
            print "WARNING" 
        
