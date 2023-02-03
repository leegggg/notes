# DDL to ORM

## py sqlalamery

```bash
\s+(.+?)\s([inud].+?)\s.+
    $1 = Column('$1', __$2__)   #$0
    
__int__
INTEGER

__nvarchar(.*)__
String$1

```
