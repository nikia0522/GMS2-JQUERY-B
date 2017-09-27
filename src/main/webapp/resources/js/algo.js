var series={
		arithmetic : (f,l)=>{
			var sum=0;
			var first=f*1;
			var last=l*1;
			for(var i=first;i<=last;i++){
				sum+=i;
			}			
		return sum;
		},
		switchSeries :()=>{
			var sum=0;
			var sw=0;
			var first=0;
			do{
				first++;
			if(sw==0){
				sum+=first;
				sw=1;
			}else{
				sum-=first;
				sw=0;
			}
			}
			while(first<100);
			return sum;
			},
		differSeries:x=>{
			var i=1;
			var j=0;
			var sum=0;
			
			do{
			i+=j;
			sum+=i;
			j++;
			}
			while(j<x);
			return sum;
		},
		factorial:(x)=>{
			var i=1;
			var j=1;
			var sum=0;
			
			do{
			j*=i;
			i++;
			sum+=j;
			}
			while(i<=x);
			return sum;
		},
		fibonacci:()=>{
			
			var a,b,c,sum,cnt;
			a=1;
			b=1;
			sum=2;
			cnt=2;
			while(1){
				c=a+b;
				sum+=c;
				cnt++;
			if(cnt<20){
				a=b;
				b=c;
			}else{
				return sum;
				break;
			}
			};
			return sum;
			
		}

}
var sort={
		selection:(sortList)=>{
			console.log('start:'+sortList);
			var m,i,j,k,x;
			var p=sortList;
			m=-1;
			do{	m++	}while(m<4);
			i=-1;
			do{ i++; 
				j=i;
				do{
					j++
					if(sortList[i]*1>sortList[j]*1){
						k=sortList[i];
						sortList[i]=sortList[j];
						sortList[j]=k;
					}
				}while(j<4);
			}while(i<3);
			for(x=0;x<=4;x++)
				console.log('end:'+sortList);
			return p
			},
			
		bubble:(x)=>{
			console.log('start:'+x);
			var i=0,j=0,k=0;
			for(i=0;i<x.length;i++){
				for(j=0;j<x.length;j++){
					if(x[j]*1 > x[j+1]*1){
						k=x[j];
						x[j]=x[j+1];
						x[j+1]=k;
					}
				}
			}
			console.log('end:'+x);
			return x;
		},
		insertion:(x)=>{
			console.log('start:'+x);
			var i=0,j=0,k=0;
			for(i=0;i<x.length;i++){
				for(j=0;j<x.length;j++){
					if(x[i]*1<x[j]*1){
						k=x[i];
						x[i]=x[j];
						x[j]=k;
					}
				}
			}
			console.log('end:'+x);
			return x		
		},
		ranking:(x)=>{ return x;},
      	binSearch:(x)=>{},
		merge:(x)=>{},
		stack:(x)=>{}
}
var mtx={}
var math={}
var appl={}