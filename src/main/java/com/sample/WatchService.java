package com.sample;
import com.sample.model.WatchType;

import java.util.ArrayList;
import java.util.List;

public class WatchService {

    public List getAvailableBrands(WatchType type){

            List brands = new ArrayList();

            if(type.equals(WatchType.FOSSIL)){
                brands.add("Q Series");
                brands.add("Chronograph-Black Dial");
                brands.add("Townsman-Navy");

            }else if(type.equals(WatchType.TISSOT)){
                brands.add("T Classic");
                brands.add("T Sport");
                brands.add("T-120");

            }else if(type.equals(WatchType.OMEGA)){
                brands.add("Seamaster");
                brands.add("Speedmaster");

            }else if(type.equals(WatchType.TITAN)){
                brands.add("Grandmaster");
            }
            else {
                brands.add("No Brand Available");
            }
            return brands;
    }

    public List getPrices(WatchType type)
    {
        List prices = new ArrayList();
        if(type.equals(WatchType.FOSSIL)){
            prices.add(20000);
            prices.add(15000);
            prices.add(12000);
        }
        else if(type.equals(WatchType.TISSOT)){
            prices.add(13000);
            prices.add(12000);
            prices.add(18000);
        }
        else if(type.equals(WatchType.OMEGA)){
            prices.add(17500);
            prices.add(18750);
        }
        else if(type.equals(WatchType.TITAN)){
            prices.add(12500);
        }
        else {
            prices.add(0);
        }
        return prices;
    }

}
