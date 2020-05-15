.class public final Lcom/android/internal/app/procstats/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_PROTO_ENUMS:[I

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_SCREEN_PROTO_ENUMS:[I

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field public static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field static final STATE_PROTO_ENUMS:[I

.field static final STATE_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 57
    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Persist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 59
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Top"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 60
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ImpFg"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 61
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ImpBg"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 62
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Backup"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 63
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Service"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 64
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "ServRst"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 65
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Receivr"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 66
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "HeavyWt"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 67
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "Home"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 68
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "LastAct"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 69
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "CchAct"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 70
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "CchCAct"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    .line 71
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const-string v2, "CchEmty"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    .line 73
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 74
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "pers"

    aput-object v2, v1, v3

    .line 75
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "top"

    aput-object v2, v1, v4

    .line 76
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "impfg"

    aput-object v2, v1, v5

    .line 77
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "impbg"

    aput-object v2, v1, v6

    .line 78
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "backup"

    aput-object v2, v1, v7

    .line 79
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "service"

    aput-object v2, v1, v8

    .line 80
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "service-rs"

    aput-object v2, v1, v9

    .line 81
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string/jumbo v2, "receiver"

    aput-object v2, v1, v10

    .line 82
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "heavy"

    aput-object v2, v1, v11

    .line 83
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "home"

    aput-object v2, v1, v12

    .line 84
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "lastact"

    aput-object v2, v1, v13

    .line 85
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cch-activity"

    aput-object v2, v1, v14

    .line 86
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cch-aclient"

    aput-object v2, v1, v15

    .line 87
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    const-string v2, "cch-empty"

    aput-object v2, v1, v16

    .line 89
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "p"

    aput-object v2, v1, v3

    .line 91
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "t"

    aput-object v2, v1, v4

    .line 92
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "f"

    aput-object v2, v1, v5

    .line 93
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "b"

    aput-object v2, v1, v6

    .line 94
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "u"

    aput-object v2, v1, v7

    .line 95
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "s"

    aput-object v2, v1, v8

    .line 96
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "x"

    aput-object v2, v1, v9

    .line 97
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "r"

    aput-object v2, v1, v10

    .line 98
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string/jumbo v2, "w"

    aput-object v2, v1, v11

    .line 99
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "h"

    aput-object v2, v1, v12

    .line 100
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "l"

    aput-object v2, v1, v13

    .line 101
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v14

    .line 102
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "c"

    aput-object v2, v1, v15

    .line 103
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const-string v2, "e"

    aput-object v2, v1, v16

    .line 105
    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    .line 106
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v4, v1, v3

    .line 107
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v5, v1, v4

    .line 108
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v6, v1, v5

    .line 109
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v7, v1, v6

    .line 110
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v8, v1, v7

    .line 111
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v9, v1, v8

    .line 112
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v10, v1, v9

    .line 113
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v11, v1, v10

    .line 114
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v12, v1, v11

    .line 115
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v13, v1, v12

    .line 116
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v14, v1, v13

    .line 117
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v15, v1, v14

    .line 118
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v16, v1, v15

    .line 119
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    aput v0, v1, v16

    .line 122
    const-string/jumbo v0, "off"

    const-string/jumbo v1, "on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "norm"

    const-string/jumbo v1, "mod"

    const-string/jumbo v2, "low"

    const-string v3, "crit"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 132
    const-string v0, "0"

    const-string v1, "1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 136
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    .line 141
    const-string/jumbo v0, "n"

    const-string/jumbo v1, "m"

    const-string v2, "l"

    const-string v3, "c"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 145
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "itemName"    # Ljava/lang/String;

    .line 419
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 421
    .local v0, "ITEMLEN":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 422
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_0

    .line 423
    const-string v2, ""

    return-object v2

    .line 424
    :cond_0
    if-lt v0, v1, :cond_1

    .line 425
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 426
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 430
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    :cond_1
    return-object p1
.end method

.method public static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .line 319
    const/4 v0, 0x0

    move v1, v0

    .local v1, "iscreen":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 320
    move v2, v0

    .local v2, "imem":I
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 321
    add-int v3, v2, v1

    .line 322
    .local v3, "state":I
    aget-wide v4, p2, v3

    .line 323
    .local v4, "time":J
    if-ne p3, v3, :cond_0

    .line 324
    sub-long v6, p6, p4

    add-long/2addr v4, v6

    .line 326
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 327
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 320
    .end local v3    # "state":I
    .end local v4    # "time":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    .end local v2    # "imem":I
    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 331
    .end local v1    # "iscreen":I
    :cond_3
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .line 377
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    move-object v10, p0

    .line 377
    const-string/jumbo v0, "process"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "uid"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v0, "vers"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    const-string v0, "\t"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 383
    move-object/from16 v2, p3

    goto :goto_0

    .line 382
    :cond_0
    nop

    .line 383
    move-object v2, v1

    :goto_0
    if-eqz p4, :cond_1

    .line 384
    move-object/from16 v3, p5

    goto :goto_1

    .line 383
    :cond_1
    nop

    .line 384
    move-object v3, v1

    :goto_1
    if-eqz p6, :cond_2

    .line 382
    move-object/from16 v1, p7

    goto :goto_2

    .line 384
    :cond_2
    nop

    .line 382
    :goto_2
    invoke-static {v10, v0, v2, v3, v1}, Lcom/android/internal/app/procstats/DumpUtils;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 385
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 386
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 386
    .local v0, "i":I
    :goto_3
    move v11, v0

    .line 386
    .end local v0    # "i":I
    .local v11, "i":I
    if-ltz v11, :cond_3

    .line 387
    move-object v12, p1

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 388
    .local v8, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v0

    invoke-static {v10, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 391
    const-string v0, "\t"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 393
    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v13, v8

    move-wide/from16 v8, p8

    .end local v8    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v13, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V

    .line 395
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 386
    .end local v13    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v0, v11, -0x1

    .line 386
    .end local v11    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .line 397
    .end local v0    # "i":I
    :cond_3
    move-object v12, p1

    return-void
.end method

.method public static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    .line 368
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 369
    move-object v1, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 370
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V

    .line 368
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_0
    move-object v1, p2

    return-void
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    move-object/from16 v0, p0

    .line 279
    const-wide/16 v1, 0x0

    .line 280
    .local v1, "totalTime":J
    const/4 v3, -0x1

    .line 281
    .local v3, "printedScreen":I
    const/4 v4, 0x0

    move v5, v3

    move-wide v2, v1

    move v1, v4

    .end local v3    # "printedScreen":I
    .local v1, "iscreen":I
    .local v2, "totalTime":J
    .local v5, "printedScreen":I
    :goto_0
    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    if-ge v1, v6, :cond_6

    .line 282
    const/4 v6, -0x1

    .line 283
    .local v6, "printedMem":I
    move-wide v9, v2

    move v2, v4

    .local v2, "imem":I
    .local v9, "totalTime":J
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 284
    add-int v3, v2, v1

    .line 285
    .local v3, "state":I
    aget-wide v11, p2, v3

    .line 286
    .local v11, "time":J
    const-string v13, ""

    .line 287
    .local v13, "running":Ljava/lang/String;
    move/from16 v14, p3

    if-ne v14, v3, :cond_0

    .line 288
    sub-long v15, p6, p4

    add-long/2addr v11, v15

    .line 289
    if-eqz v0, :cond_0

    .line 290
    const-string v13, " (running)"

    .line 293
    :cond_0
    cmp-long v15, v11, v7

    if-eqz v15, :cond_4

    .line 294
    if-eqz v0, :cond_3

    .line 295
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const/4 v15, -0x1

    if-eq v5, v1, :cond_1

    .line 297
    nop

    .line 296
    move v7, v1

    goto :goto_2

    .line 297
    :cond_1
    nop

    .line 296
    move v7, v15

    :goto_2
    invoke-static {v0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 298
    move v5, v1

    .line 299
    if-eq v6, v2, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v15

    :goto_3
    invoke-static {v0, v7, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 300
    move v6, v2

    .line 301
    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    :cond_3
    add-long/2addr v9, v11

    .line 283
    .end local v3    # "state":I
    .end local v11    # "time":J
    .end local v13    # "running":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 281
    .end local v2    # "imem":I
    .end local v6    # "printedMem":I
    :cond_5
    move/from16 v14, p3

    add-int/lit8 v1, v1, 0x4

    move-wide v2, v9

    goto :goto_0

    .line 308
    .end local v1    # "iscreen":I
    .end local v9    # "totalTime":J
    .local v2, "totalTime":J
    :cond_6
    move/from16 v14, p3

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 309
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v1, "    TOTAL: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 314
    :cond_7
    return-wide v2
.end method

.method private static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .line 335
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 336
    .local v1, "NS":I
    :goto_0
    if-eqz p3, :cond_1

    array-length v2, p3

    goto :goto_1

    :cond_1
    move v2, v0

    .line 337
    .local v2, "NM":I
    :goto_1
    if-eqz p4, :cond_2

    array-length v3, p4

    goto :goto_2

    :cond_2
    move v3, v0

    .line 338
    .local v3, "NP":I
    :goto_2
    const/4 v4, 0x0

    move v5, v4

    .local v5, "is":I
    :goto_3
    if-ge v5, v1, :cond_a

    .line 339
    move v6, v4

    .local v6, "im":I
    :goto_4
    if-ge v6, v2, :cond_9

    .line 340
    move v7, v4

    .local v7, "ip":I
    :goto_5
    if-ge v7, v3, :cond_8

    .line 341
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    const/4 v8, 0x0

    .line 343
    .local v8, "printed":Z
    if-eqz p2, :cond_3

    array-length v9, p2

    if-le v9, v0, :cond_3

    .line 344
    aget v9, p2, v5

    invoke-static {p0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 345
    const/4 v8, 0x1

    .line 347
    :cond_3
    if-eqz p3, :cond_5

    array-length v9, p3

    if-le v9, v0, :cond_5

    .line 348
    if-eqz v8, :cond_4

    .line 349
    const-string v9, "-"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    :cond_4
    aget v9, p3, v6

    invoke-static {p0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 352
    const/4 v8, 0x1

    .line 354
    :cond_5
    if-eqz p4, :cond_7

    array-length v9, p4

    if-le v9, v0, :cond_7

    .line 355
    if-eqz v8, :cond_6

    .line 356
    const-string v9, "-"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    :cond_6
    sget-object v9, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v10, p4, v7

    aget-object v9, v9, v10

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .end local v8    # "printed":Z
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 339
    .end local v7    # "ip":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 338
    .end local v6    # "im":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 363
    .end local v5    # "is":I
    :cond_a
    return-void
.end method

.method public static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .line 259
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 260
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 261
    return-void
.end method

.method public static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .line 271
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 272
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 273
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 274
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 275
    return-void
.end method

.method public static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .line 400
    div-int v0, p2, p3

    .line 401
    .local v0, "index":I
    if-ltz v0, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 402
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 406
    :goto_0
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1
.end method

.method public static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 216
    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 212
    :pswitch_0
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 204
    :pswitch_2
    const-string v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 200
    :pswitch_3
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    if-eqz p2, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 220
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .line 223
    if-ltz p1, :cond_1

    .line 224
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 225
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method public static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .line 233
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 234
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 235
    const-string v0, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v3

    if-gez v0, :cond_1

    .line 237
    const-string v0, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, "%.0f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    :goto_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .line 245
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 246
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 247
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 248
    return-void
.end method

.method public static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .line 264
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 265
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 266
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 267
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 268
    return-void
.end method

.method public static printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .locals 12
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "screenId"    # J
    .param p3, "memId"    # J
    .param p5, "stateId"    # J
    .param p7, "state"    # I

    .line 252
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_PROTO_ENUMS:[I

    const/16 v5, 0x38

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result v0

    .line 254
    .end local p7    # "state":I
    .local v0, "state":I
    sget-object v9, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_PROTO_ENUMS:[I

    const/16 v11, 0xe

    move-object v6, p0

    move-wide v7, p3

    move v10, v0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    move-result v0

    .line 255
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    const/4 v6, 0x1

    move-object v1, p0

    move-wide/from16 v2, p5

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 256
    return-void
.end method

.method public static printProto(Landroid/util/proto/ProtoOutputStream;J[III)I
    .locals 2
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "enums"    # [I
    .param p4, "value"    # I
    .param p5, "mod"    # I

    .line 411
    div-int v0, p4, p5

    .line 412
    .local v0, "index":I
    if-ltz v0, :cond_0

    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 413
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 415
    :cond_0
    mul-int v1, v0, p5

    sub-int v1, p4, v1

    return v1
.end method

.method public static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .line 161
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 172
    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_0
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    goto :goto_0

    .line 163
    :pswitch_1
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    goto :goto_0

    .line 169
    :cond_0
    const-string v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    nop

    .line 175
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .line 178
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 188
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_0
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    goto :goto_0

    .line 180
    :pswitch_1
    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    nop

    .line 191
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
