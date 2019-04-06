# Facebook_ELFGo_SQL

Facebook_ELFGo_SQL reads Facebook AI team's Professional Go players' games analysis data and compares 2 players' scores.

## Usage:

```bash
# To compare Iyama Yuta and Jiang Weijie
$ ./fb_elf.sh
# To compare Ke Jie and Jiang Weijie
$ . <(sed 's/Iyama Yuta/Ke Jie/' ../{your_dir}/Facebook_ELFGo_SQL/fb_elf.sh )
```

## fb_elf.sh:

This requires q-TextAsData
