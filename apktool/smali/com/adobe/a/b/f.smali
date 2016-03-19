.class abstract Lcom/adobe/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final R:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final S:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private T:Ljava/security/SecureRandom;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:I

.field protected k:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:J

.field protected t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/adobe/a/b/f$1;

    invoke-direct {v0}, Lcom/adobe/a/b/f$1;-><init>()V

    sput-object v0, Lcom/adobe/a/b/f;->O:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/adobe/a/b/f$2;

    invoke-direct {v0}, Lcom/adobe/a/b/f$2;-><init>()V

    sput-object v0, Lcom/adobe/a/b/f;->P:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/adobe/a/b/f$3;

    invoke-direct {v0}, Lcom/adobe/a/b/f$3;-><init>()V

    sput-object v0, Lcom/adobe/a/b/f;->Q:Ljava/util/HashSet;

    .line 156
    new-instance v0, Lcom/adobe/a/b/f$4;

    invoke-direct {v0}, Lcom/adobe/a/b/f$4;-><init>()V

    sput-object v0, Lcom/adobe/a/b/f;->R:Ljava/util/HashSet;

    .line 176
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "%08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "%09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%0A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "%0B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "%0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "%0D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "%0E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "%0F"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "%10"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "%11"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "%12"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "%13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "%14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "%15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "%16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "%17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "%18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "%19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "%1A"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "%1B"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "%1C"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "%1D"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "%1E"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "%1F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "%20"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "%21"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "%22"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "%23"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "%24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "%25"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "%26"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "%27"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "%28"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "%29"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "%2B"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "%2C"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "%2F"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "%3A"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "%3B"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "%3C"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "%3D"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "%3E"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "%3F"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "%40"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "%5B"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "%5C"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "%5D"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "%5E"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "%60"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "%7B"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "%7C"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "%7D"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "%7E"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%7F"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "%80"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "%81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "%82"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "%83"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "%84"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "%85"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "%86"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "%87"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "%88"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "%89"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "%8A"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "%8B"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "%8C"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "%8D"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "%8E"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "%8F"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "%90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "%91"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "%92"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "%93"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "%94"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "%95"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "%96"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "%97"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "%98"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "%99"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "%9A"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "%9B"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "%9C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "%9D"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "%9E"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "%9F"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "%A0"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "%A1"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "%A2"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "%A3"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "%A4"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "%A5"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "%A6"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "%A7"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "%A8"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "%A9"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "%AA"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "%AB"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "%AC"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "%AD"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "%AE"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "%AF"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "%B0"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "%B1"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "%B2"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "%B3"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "%B4"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "%B5"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "%B6"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "%B7"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "%B8"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "%B9"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "%BA"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "%BB"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "%BC"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "%BD"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "%BE"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "%BF"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "%C0"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "%C1"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "%C2"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "%C3"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "%C4"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "%C5"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "%C6"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "%C7"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "%C8"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "%C9"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "%CA"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "%CB"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "%CC"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "%CD"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "%CE"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "%CF"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "%D0"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "%D1"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "%D2"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "%D3"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "%D4"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "%D5"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "%D6"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "%D7"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "%D8"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "%D9"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "%DA"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "%DB"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "%DC"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "%DD"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "%DE"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "%DF"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "%E0"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "%E1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "%E2"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "%E3"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "%E4"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "%E5"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "%E6"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "%E7"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "%E8"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "%E9"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "%EA"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "%EB"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "%EC"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "%ED"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "%EE"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "%EF"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "%F0"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "%F1"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "%F2"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "%F3"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "%F4"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "%F5"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "%F6"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "%F7"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "%F8"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "%F9"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "%FA"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "%FB"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "%FC"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "%FD"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "%FE"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "%FF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/a/b/f;->S:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/adobe/a/b/f;->a:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/adobe/a/b/f;->b:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcom/adobe/a/b/f;->e:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/adobe/a/b/f;->f:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/adobe/a/b/f;->c:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/adobe/a/b/f;->u:Ljava/lang/String;

    .line 25
    iput-boolean v3, p0, Lcom/adobe/a/b/f;->g:Z

    .line 26
    iput-boolean v3, p0, Lcom/adobe/a/b/f;->h:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/a/b/f;->i:Z

    .line 28
    iput v4, p0, Lcom/adobe/a/b/f;->j:I

    .line 31
    iput-object v2, p0, Lcom/adobe/a/b/f;->v:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/adobe/a/b/f;->w:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/adobe/a/b/f;->x:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/adobe/a/b/f;->y:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/adobe/a/b/f;->z:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/adobe/a/b/f;->A:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/adobe/a/b/f;->B:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/adobe/a/b/f;->C:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    .line 44
    iput-object v2, p0, Lcom/adobe/a/b/f;->D:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/adobe/a/b/f;->E:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/adobe/a/b/f;->F:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/adobe/a/b/f;->G:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/adobe/a/b/f;->H:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/adobe/a/b/f;->I:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/adobe/a/b/f;->J:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/adobe/a/b/f;->L:Ljava/lang/String;

    .line 59
    iput v3, p0, Lcom/adobe/a/b/f;->M:I

    .line 60
    iput v3, p0, Lcom/adobe/a/b/f;->N:I

    .line 196
    iput-object v2, p0, Lcom/adobe/a/b/f;->q:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    .line 198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/a/b/f;->s:J

    .line 199
    iput-boolean v3, p0, Lcom/adobe/a/b/f;->t:Z

    .line 202
    iput-object v2, p0, Lcom/adobe/a/b/f;->T:Ljava/security/SecureRandom;

    .line 9112
    const-string v0, "JAVA-3.2.6-AN"

    iput-object v0, p0, Lcom/adobe/a/b/f;->d:Ljava/lang/String;

    .line 9113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->l:Ljava/util/Hashtable;

    .line 9114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->m:Ljava/util/Hashtable;

    .line 9115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->p:Ljava/util/Hashtable;

    .line 9116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->o:Ljava/util/Hashtable;

    .line 9117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->n:Ljava/util/Hashtable;

    .line 9118
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    .line 9120
    iput-boolean v3, p0, Lcom/adobe/a/b/f;->i:Z

    .line 9121
    iput v4, p0, Lcom/adobe/a/b/f;->j:I

    .line 9123
    iput-boolean v3, p0, Lcom/adobe/a/b/f;->g:Z

    .line 9124
    iput-object v2, p0, Lcom/adobe/a/b/f;->b:Ljava/lang/String;

    .line 9127
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/f;->T:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9131
    :goto_0
    return-void

    .line 9128
    :catch_0
    move-exception v0

    .line 9129
    iput-object v2, p0, Lcom/adobe/a/b/f;->T:Ljava/security/SecureRandom;

    .line 9130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create secure random number generator : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Ljava/util/Hashtable;Ljava/util/ArrayList;)Lcom/adobe/a/b/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/a/b/c;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1503
    new-instance v3, Lcom/adobe/a/b/c;

    invoke-direct {v3}, Lcom/adobe/a/b/c;-><init>()V

    .line 1505
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 1506
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1507
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1508
    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "contextdata."

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1514
    :goto_1
    const/16 v6, 0x2e

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ltz v6, :cond_2

    .line 1515
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    add-int/lit8 v1, v6, 0x1

    goto :goto_1

    .line 1518
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/adobe/a/b/f;->a(Ljava/lang/Object;Lcom/adobe/a/b/c;Ljava/util/List;I)V

    goto :goto_0

    .line 1523
    :cond_3
    return-object v3
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1947
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1949
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1950
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1951
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1954
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1956
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1465
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1466
    const-string v3, "contextdata"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1467
    const/4 v0, 0x0

    .line 1484
    :goto_1
    return-object v0

    .line 1470
    :cond_1
    const-string v3, "contextdata"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1471
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1475
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1476
    const-string v0, "contextdata.a.CarrierName"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    const-string v0, "contextdata.a.OSVersion"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    const-string v0, "contextdata.a.DeviceName"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    const-string v0, "contextdata.a.Resolution"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v0, v1

    .line 1484
    goto :goto_1

    .line 1481
    :cond_3
    const-string v0, "   "

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1177
    iput-object v0, p0, Lcom/adobe/a/b/f;->I:Ljava/lang/String;

    .line 1178
    iput-object v0, p0, Lcom/adobe/a/b/f;->J:Ljava/lang/String;

    .line 1179
    iput-object v0, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    .line 1181
    iput-object v0, p0, Lcom/adobe/a/b/f;->L:Ljava/lang/String;

    .line 1182
    iput v1, p0, Lcom/adobe/a/b/f;->M:I

    .line 1183
    iput v1, p0, Lcom/adobe/a/b/f;->N:I

    .line 1185
    iget-object v0, p0, Lcom/adobe/a/b/f;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1186
    return-void
.end method

.method private final a(Ljava/lang/Object;Lcom/adobe/a/b/c;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/adobe/a/b/c;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1527
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 1528
    if-ge p4, v2, :cond_0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 1529
    :goto_1
    if-nez v1, :cond_1

    .line 1540
    :goto_2
    return-void

    .line 1528
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1533
    :cond_1
    new-instance v0, Lcom/adobe/a/b/c;

    invoke-direct {v0}, Lcom/adobe/a/b/c;-><init>()V

    .line 1534
    invoke-virtual {p2, v1}, Lcom/adobe/a/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1535
    invoke-virtual {p2, v1}, Lcom/adobe/a/b/c;->b(Ljava/lang/String;)Lcom/adobe/a/b/c;

    move-result-object v0

    .line 1537
    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ne v2, p4, :cond_3

    .line 1539
    iput-object p1, v0, Lcom/adobe/a/b/c;->a:Ljava/lang/Object;

    .line 1540
    invoke-virtual {p2, v1, v0}, Lcom/adobe/a/b/c;->a(Ljava/lang/String;Lcom/adobe/a/b/c;)V

    goto :goto_2

    .line 1544
    :cond_3
    invoke-virtual {p2, v1, v0}, Lcom/adobe/a/b/c;->a(Ljava/lang/String;Lcom/adobe/a/b/c;)V

    .line 1545
    add-int/lit8 p4, p4, 0x1

    move-object p2, v0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1741
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1742
    invoke-static {v0}, Lcom/adobe/a/b/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1744
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1621
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1622
    return-void
.end method

.method private a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1634
    invoke-static {p3}, Lcom/adobe/a/b/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1635
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    invoke-static {p2}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/adobe/a/b/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    instance-of v0, p3, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 1646
    check-cast v0, Ljava/util/ArrayList;

    .line 1647
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    :cond_2
    instance-of v0, p3, Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 1652
    check-cast v0, Ljava/util/Hashtable;

    .line 1653
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1625
    invoke-static {p2}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    :goto_0
    return-void

    .line 1630
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/adobe/a/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    monitor-exit p0

    .line 347
    :goto_0
    return-void

    .line 337
    :cond_0
    if-eqz p1, :cond_14

    .line 338
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    move-object v2, v0

    .line 341
    :goto_1
    if-eqz p2, :cond_13

    .line 342
    invoke-virtual {p2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 4135
    :goto_2
    iget-object v3, p0, Lcom/adobe/a/b/f;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    .line 345
    :goto_3
    invoke-virtual {p0, v0}, Lcom/adobe/a/b/f;->a(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/adobe/a/b/f;->a()V

    .line 347
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4159
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 4265
    iget-object v1, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    const-string v3, "a.Resolution"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4266
    iget-object v1, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    const-string v3, "a.DeviceName"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4267
    iget-object v1, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    const-string v3, "a.OSVersion"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4268
    iget-object v1, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    const-string v3, "a.CarrierName"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    iget-object v1, p0, Lcom/adobe/a/b/f;->L:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5189
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 5191
    const-string v3, "ce"

    iget-object v4, p0, Lcom/adobe/a/b/f;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5192
    const-string v3, "mtp"

    iget-object v4, p0, Lcom/adobe/a/b/f;->L:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5193
    const-string v3, "mtss"

    iget v4, p0, Lcom/adobe/a/b/f;->M:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5194
    const-string v3, "mti"

    iget v4, p0, Lcom/adobe/a/b/f;->N:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5196
    iget-object v3, p0, Lcom/adobe/a/b/f;->l:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 5197
    iget-object v3, p0, Lcom/adobe/a/b/f;->m:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 4163
    invoke-direct {p0, v8, v1}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 4164
    invoke-direct {p0, v8, v2, v0}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 5246
    const-string v0, "ce"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5247
    const-string v0, "ce"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6272
    :cond_2
    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6273
    iget-wide v2, p0, Lcom/adobe/a/b/f;->s:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/adobe/a/b/f;->i:Z

    if-eqz v1, :cond_f

    .line 6274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 6613
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    .line 6274
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6275
    const-string v2, "ts"

    invoke-direct {p0, v8, v2, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6281
    :cond_3
    :goto_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 6282
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v10, 0xb

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xd

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x3e8

    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6301
    const-string v1, "t"

    invoke-direct {p0, v8, v1, v0}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hit Parameters : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4143
    iget-object v0, p0, Lcom/adobe/a/b/f;->T:Ljava/security/SecureRandom;

    if-eqz v0, :cond_12

    .line 4144
    iget-object v0, p0, Lcom/adobe/a/b/f;->T:Ljava/security/SecureRandom;

    const v1, 0x5f5e100

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4146
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4147
    invoke-direct {p0, v8}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    .line 6919
    iget-object v0, p0, Lcom/adobe/a/b/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 6920
    const-string v0, ""

    .line 6921
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/adobe/a/b/f;->a:Ljava/lang/String;

    const-string v5, "[,]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6922
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 6923
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6927
    :cond_4
    const-string v3, "."

    const-string v4, "-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6928
    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6929
    iget-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 6930
    iget-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    .line 6931
    iget-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    const-string v4, "dc2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    const-string v4, "122"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6932
    :cond_5
    const-string v3, "122"

    iput-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    .line 6938
    :cond_6
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".2o7.net"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/f;->b:Ljava/lang/String;

    .line 6941
    :cond_7
    iget-object v3, p0, Lcom/adobe/a/b/f;->b:Ljava/lang/String;

    .line 4149
    iget-boolean v0, p0, Lcom/adobe/a/b/f;->g:Z

    if-eqz v0, :cond_11

    const-string v0, "https"

    .line 4150
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/b/ss/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/a/b/f;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/0/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?AQB=1&ndh=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&AQE=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 5252
    :cond_8
    iget-object v1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/adobe/a/b/f;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/adobe/a/b/f;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5253
    :cond_9
    iget-object v1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    .line 5254
    iget-object v1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    const-string v3, "d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    const-string v3, "e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 5255
    const-string v1, "o"

    iput-object v1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    .line 5258
    :cond_a
    const-string v1, "pe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lnk_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v1, v3}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5259
    const-string v1, "pev1"

    iget-object v3, p0, Lcom/adobe/a/b/f;->I:Ljava/lang/String;

    invoke-direct {p0, v8, v1, v3}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5260
    const-string v1, "pev2"

    iget-object v3, p0, Lcom/adobe/a/b/f;->J:Ljava/lang/String;

    invoke-direct {p0, v8, v1, v3}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6203
    :cond_b
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 6205
    iget-object v3, p0, Lcom/adobe/a/b/f;->f:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 6206
    const-string v3, "vid"

    iget-object v4, p0, Lcom/adobe/a/b/f;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6211
    :goto_9
    const-string v3, "ce"

    iget-object v4, p0, Lcom/adobe/a/b/f;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6212
    const-string v3, "pageName"

    iget-object v4, p0, Lcom/adobe/a/b/f;->x:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6213
    const-string v3, "cc"

    iget-object v4, p0, Lcom/adobe/a/b/f;->u:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6215
    const-string v3, "purchaseID"

    iget-object v4, p0, Lcom/adobe/a/b/f;->v:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6216
    const-string v3, "xact"

    iget-object v4, p0, Lcom/adobe/a/b/f;->w:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6217
    const-string v3, "ch"

    iget-object v4, p0, Lcom/adobe/a/b/f;->y:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6218
    const-string v3, "server"

    iget-object v4, p0, Lcom/adobe/a/b/f;->z:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6219
    const-string v3, "v0"

    iget-object v4, p0, Lcom/adobe/a/b/f;->A:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6220
    const-string v3, "zip"

    iget-object v4, p0, Lcom/adobe/a/b/f;->D:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6221
    const-string v3, "state"

    iget-object v4, p0, Lcom/adobe/a/b/f;->E:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6222
    const-string v3, "products"

    iget-object v4, p0, Lcom/adobe/a/b/f;->B:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6224
    iget-object v3, p0, Lcom/adobe/a/b/f;->m:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 6225
    iget-object v3, p0, Lcom/adobe/a/b/f;->l:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 6226
    iget-object v3, p0, Lcom/adobe/a/b/f;->n:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 6227
    iget-object v3, p0, Lcom/adobe/a/b/f;->o:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 6228
    iget-object v3, p0, Lcom/adobe/a/b/f;->p:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v3}, Lcom/adobe/a/b/f;->c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 4168
    invoke-direct {p0, v8, v1}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 4169
    invoke-direct {p0, v8, v2, v0}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 6234
    const-string v0, "vid"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6235
    const-string v0, "vid"

    iget-object v1, p0, Lcom/adobe/a/b/f;->e:Ljava/lang/String;

    invoke-direct {p0, v8, v0, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6237
    :cond_c
    const-string v0, "ce"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6238
    const-string v0, "ce"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6240
    :cond_d
    const-string v0, "pageName"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "g"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6241
    const-string v0, "pageName"

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 6208
    :cond_e
    const-string v3, "vid"

    iget-object v4, p0, Lcom/adobe/a/b/f;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 6276
    :cond_f
    iget-wide v2, p0, Lcom/adobe/a/b/f;->s:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 6277
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/adobe/a/b/f;->s:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 6278
    const-string v1, "ts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/adobe/a/b/f;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, v1, v2}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 6935
    :cond_10
    const-string v3, "112"

    iput-object v3, p0, Lcom/adobe/a/b/f;->r:Ljava/lang/String;

    goto/16 :goto_7

    .line 4149
    :cond_11
    const-string v0, "http"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :cond_12
    move v0, v7

    goto/16 :goto_6

    :cond_13
    move-object v0, v1

    goto/16 :goto_2

    :cond_14
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1488
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1489
    iget-object v0, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 1490
    if-eqz p2, :cond_0

    .line 1491
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1492
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1494
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1495
    invoke-static {v0}, Lcom/adobe/a/b/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1499
    :cond_0
    const-string v0, "c"

    invoke-direct {p0, v1, p3}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/ArrayList;)Lcom/adobe/a/b/c;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1500
    return-void
.end method

.method private a(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    iget-object v0, p0, Lcom/adobe/a/b/f;->F:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/adobe/a/b/f;->F:Ljava/lang/String;

    const-string v1, "[,]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1312
    :cond_0
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 1313
    if-eqz p3, :cond_3

    .line 1314
    invoke-virtual {p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 1315
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1316
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1317
    const-string v1, "lightTrackVars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1318
    const-string v1, "lightTrackVars"

    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1319
    invoke-static {v1}, Lcom/adobe/a/b/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    invoke-static {v1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1322
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1323
    const-string v6, "[,]"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1327
    :cond_2
    invoke-static {v0}, Lcom/adobe/a/b/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9356
    sget-object v6, Lcom/adobe/a/b/f;->R:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 1328
    if-eqz v6, :cond_1

    .line 1329
    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1334
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/adobe/a/b/f;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1335
    invoke-direct {p0, p1, v4}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1337
    const/4 v0, 0x0

    .line 1338
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1339
    sget-object v0, Lcom/adobe/a/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1341
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1342
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1343
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1344
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1345
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1349
    :cond_5
    invoke-static {v3}, Lcom/adobe/a/b/f;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1352
    :cond_6
    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    .line 1353
    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1869
    if-nez p0, :cond_1

    .line 11839
    :cond_0
    :goto_0
    return v0

    .line 1871
    :cond_1
    invoke-static {p0}, Lcom/adobe/a/b/f;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10891
    check-cast p0, Ljava/lang/String;

    .line 1872
    invoke-static {p0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1873
    :cond_2
    invoke-static {p0}, Lcom/adobe/a/b/f;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10903
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11838
    if-eqz v2, :cond_0

    move v0, v1

    .line 1874
    goto :goto_0

    .line 1875
    :cond_3
    invoke-static {p0}, Lcom/adobe/a/b/f;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11915
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1878
    goto :goto_0
.end method

.method private b(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1748
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1750
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1751
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1752
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1754
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1755
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1757
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    check-cast v1, Ljava/lang/String;

    .line 1760
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    invoke-static {v1}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1764
    :cond_1
    instance-of v0, v1, Lcom/adobe/a/b/c;

    if-eqz v0, :cond_4

    .line 1765
    const/4 v2, 0x0

    .line 1766
    check-cast v1, Lcom/adobe/a/b/c;

    .line 1767
    iget-object v0, v1, Lcom/adobe/a/b/c;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/adobe/a/b/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    const/4 v2, 0x1

    .line 1769
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    iget-object v0, v1, Lcom/adobe/a/b/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v0, v2

    .line 1774
    iget-object v2, v1, Lcom/adobe/a/b/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1775
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    iget-object v0, v1, Lcom/adobe/a/b/c;->b:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    const-string v0, "&."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1782
    :cond_3
    iget-object v2, v1, Lcom/adobe/a/b/c;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/adobe/a/b/f;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1783
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    iget-object v0, v1, Lcom/adobe/a/b/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1789
    :cond_4
    instance-of v0, v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1790
    check-cast v1, Ljava/util/ArrayList;

    .line 1791
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1792
    const-string v0, ","

    invoke-static {v1, v0}, Lcom/adobe/a/b/f;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1793
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1799
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Object for parameter \""

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\" is of class "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "We recommend using strings where possible, but we are sending this parameter with a value of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-static {v0}, Lcom/adobe/a/b/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1809
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1662
    .line 10667
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 10668
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10669
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10670
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10671
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1663
    :cond_0
    return-void
.end method

.method private b(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    iget-object v0, p0, Lcom/adobe/a/b/f;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/adobe/a/b/f;->G:Ljava/lang/String;

    const-string v4, "[,]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1366
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    iget-object v0, p0, Lcom/adobe/a/b/f;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/adobe/a/b/f;->H:Ljava/lang/String;

    const-string v5, "[,]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1371
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    iget-object v0, p0, Lcom/adobe/a/b/f;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    iget-object v0, p0, Lcom/adobe/a/b/f;->C:Ljava/lang/String;

    const-string v6, "[,]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1376
    :cond_2
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 1377
    if-eqz p3, :cond_7

    .line 1378
    invoke-virtual {p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 1379
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1380
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1381
    const-string v8, "linkTrackEvents"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1382
    const-string v0, "linkTrackEvents"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1383
    invoke-static {v0}, Lcom/adobe/a/b/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1386
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1387
    const-string v8, "[,]"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1391
    :cond_4
    const-string v8, "events"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1392
    const-string v0, "events"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1393
    invoke-static {v0}, Lcom/adobe/a/b/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1396
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1397
    const-string v8, "[,]"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1401
    :cond_5
    const-string v8, "linkTrackVars"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1402
    const-string v0, "linkTrackVars"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1403
    invoke-static {v0}, Lcom/adobe/a/b/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1406
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1407
    const-string v8, "[,]"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1412
    :cond_6
    invoke-static {v0}, Lcom/adobe/a/b/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9617
    sget-object v9, Lcom/adobe/a/b/f;->Q:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1413
    if-eqz v9, :cond_3

    .line 1414
    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1419
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/adobe/a/b/f;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1420
    invoke-direct {p0, p1, v6}, Lcom/adobe/a/b/f;->b(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1424
    const-string v0, "pe"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1425
    const-string v0, "pe"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1427
    :goto_1
    if-eqz p3, :cond_8

    const-string v6, "pe"

    invoke-virtual {p3, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1428
    const-string v0, "pe"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1431
    :cond_8
    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1432
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1433
    sget-object v0, Lcom/adobe/a/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1435
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1436
    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1437
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1438
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1439
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1443
    :cond_b
    invoke-static {v3}, Lcom/adobe/a/b/f;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 1446
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 1447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1449
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1450
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1451
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1457
    :cond_e
    invoke-direct {p0, p1, p2, v1}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    .line 1459
    const-string v0, "events"

    invoke-direct {p0, p1, v0, v5}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1460
    return-void

    :cond_f
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1884
    :try_start_0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1887
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1685
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1686
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1688
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1689
    invoke-direct {p0, p1, v0, v2}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1691
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1896
    :try_start_0
    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1899
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1908
    :try_start_0
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1911
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1859
    if-nez p0, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return v0

    .line 1862
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1865
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1703
    sget-object v0, Lcom/adobe/a/b/f;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1704
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1705
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1706
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1709
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/adobe/a/b/f;->O:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 10734
    :cond_1
    :goto_0
    return-object p0

    .line 10732
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 10733
    sget-object v1, Lcom/adobe/a/b/f;->P:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10734
    sget-object v1, Lcom/adobe/a/b/f;->P:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_0

    .line 1713
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1726
    const-string v0, "[^a-zA-Z0-9.]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    return-object v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1813
    if-nez p0, :cond_0

    .line 1829
    :goto_0
    return-object v0

    .line 1818
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1819
    array-length v3, v2

    .line 1820
    new-instance v4, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, v3, 0x1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1822
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1823
    sget-object v5, Lcom/adobe/a/b/f;->S:[Ljava/lang/String;

    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1826
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1827
    :catch_0
    move-exception v1

    .line 1828
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1960
    invoke-static {p0}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1965
    :goto_0
    return-object p0

    .line 1964
    :cond_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    invoke-static {p1}, Lcom/adobe/a/b/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/adobe/a/b/f;->l:Ljava/util/Hashtable;

    invoke-static {v1, v0, p2}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/adobe/a/b/f;->c(Ljava/lang/String;)V

    .line 2607
    iput-object p2, p0, Lcom/adobe/a/b/f;->b:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .line 7567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/a/b/f;->I:Ljava/lang/String;

    .line 7583
    iput-object p1, p0, Lcom/adobe/a/b/f;->K:Ljava/lang/String;

    .line 8575
    iput-object p2, p0, Lcom/adobe/a/b/f;->J:Ljava/lang/String;

    .line 371
    invoke-direct {p0, p3, p4}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 372
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 264
    const-string v1, "pageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0, p2, v0}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 266
    return-void
.end method

.method public final a(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 972
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 973
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 975
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 976
    iget-object v3, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/adobe/a/b/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 979
    :cond_1
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 438
    invoke-static {p1}, Lcom/adobe/a/b/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/adobe/a/b/f;->m:Ljava/util/Hashtable;

    invoke-static {v1, v0, p2}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/a/b/f;->b(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 278
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 292
    const-string v1, "events"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "o"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/a/b/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/adobe/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 294
    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/a/b/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/f;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/adobe/a/b/f;->x:Ljava/lang/String;

    .line 827
    return-void
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/adobe/a/b/f;->A:Ljava/lang/String;

    .line 892
    return-void
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 938
    invoke-static {p1}, Lcom/adobe/a/b/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/f;->C:Ljava/lang/String;

    .line 939
    return-void
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method public final j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    .line 3314
    invoke-direct {p0, v0, v0}, Lcom/adobe/a/b/f;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 303
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-direct {p0}, Lcom/adobe/a/b/f;->a()V

    .line 522
    iput-object v0, p0, Lcom/adobe/a/b/f;->v:Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/adobe/a/b/f;->w:Ljava/lang/String;

    .line 525
    iput-object v0, p0, Lcom/adobe/a/b/f;->x:Ljava/lang/String;

    .line 526
    iput-object v0, p0, Lcom/adobe/a/b/f;->y:Ljava/lang/String;

    .line 527
    iput-object v0, p0, Lcom/adobe/a/b/f;->z:Ljava/lang/String;

    .line 528
    iput-object v0, p0, Lcom/adobe/a/b/f;->A:Ljava/lang/String;

    .line 529
    iput-object v0, p0, Lcom/adobe/a/b/f;->C:Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/adobe/a/b/f;->B:Ljava/lang/String;

    .line 532
    iput-object v0, p0, Lcom/adobe/a/b/f;->D:Ljava/lang/String;

    .line 533
    iput-object v0, p0, Lcom/adobe/a/b/f;->E:Ljava/lang/String;

    .line 535
    iput-object v0, p0, Lcom/adobe/a/b/f;->F:Ljava/lang/String;

    .line 536
    iput-object v0, p0, Lcom/adobe/a/b/f;->G:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/adobe/a/b/f;->H:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/adobe/a/b/f;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 540
    iget-object v0, p0, Lcom/adobe/a/b/f;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 541
    iget-object v0, p0, Lcom/adobe/a/b/f;->n:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 542
    iget-object v0, p0, Lcom/adobe/a/b/f;->o:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 544
    iget-object v0, p0, Lcom/adobe/a/b/f;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 545
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/adobe/a/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/a/b/f;->g:Z

    .line 696
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/adobe/a/b/f;->x:Ljava/lang/String;

    return-object v0
.end method
