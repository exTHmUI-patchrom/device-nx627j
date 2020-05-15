.class public Lcom/qti/dpm/DpmRequest;
.super Ljava/lang/Object;
.source "DpmRequest.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4

.field private static final SUB_TYPE:Ljava/lang/String; = "REQ"

.field static sNextSerial:I

.field private static sPool:Lcom/qti/dpm/DpmRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/qti/dpm/DpmRequest;

.field mRequest:I

.field mSerial:I

.field public mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/qti/dpm/DpmRequest;->sNextSerial:I

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/qti/dpm/DpmRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/qti/dpm/DpmRequest;->sPoolSync:Ljava/lang/Object;

    .line 42
    const/4 v1, 0x0

    sput-object v1, Lcom/qti/dpm/DpmRequest;->sPool:Lcom/qti/dpm/DpmRequest;

    .line 43
    sput v0, Lcom/qti/dpm/DpmRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static obtain(I)Lcom/qti/dpm/DpmRequest;
    .locals 4
    .param p0, "request"    # I

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    sget-object v1, Lcom/qti/dpm/DpmRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v2, Lcom/qti/dpm/DpmRequest;->sPool:Lcom/qti/dpm/DpmRequest;

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lcom/qti/dpm/DpmRequest;->sPool:Lcom/qti/dpm/DpmRequest;

    move-object v0, v2

    .line 67
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mNext:Lcom/qti/dpm/DpmRequest;

    sput-object v2, Lcom/qti/dpm/DpmRequest;->sPool:Lcom/qti/dpm/DpmRequest;

    .line 68
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/qti/dpm/DpmRequest;->mNext:Lcom/qti/dpm/DpmRequest;

    .line 69
    sget v2, Lcom/qti/dpm/DpmRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/qti/dpm/DpmRequest;->sPoolSize:I

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    if-nez v0, :cond_1

    .line 74
    new-instance v1, Lcom/qti/dpm/DpmRequest;

    invoke-direct {v1}, Lcom/qti/dpm/DpmRequest;-><init>()V

    move-object v0, v1

    .line 77
    .end local v0    # "rr":Lcom/qti/dpm/DpmRequest;
    .local v2, "rr":Lcom/qti/dpm/DpmRequest;
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/qti/dpm/DpmRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 78
    :try_start_1
    sget v0, Lcom/qti/dpm/DpmRequest;->sNextSerial:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/qti/dpm/DpmRequest;->sNextSerial:I

    iput v0, v2, Lcom/qti/dpm/DpmRequest;->mSerial:I

    .line 79
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    iput p0, v2, Lcom/qti/dpm/DpmRequest;->mRequest:I

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, v2, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    .line 83
    iget-object v0, v2, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, v2, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v1, v2, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-object v2

    .line 79
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 71
    .end local v2    # "rr":Lcom/qti/dpm/DpmRequest;
    .restart local v0    # "rr":Lcom/qti/dpm/DpmRequest;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static resetSerial()V
    .locals 2

    .line 108
    sget-object v0, Lcom/qti/dpm/DpmRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/qti/dpm/DpmRequest;->sNextSerial:I

    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method onError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 131
    return-void
.end method

.method release()V
    .locals 3

    .line 94
    sget-object v0, Lcom/qti/dpm/DpmRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sget v1, Lcom/qti/dpm/DpmRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 96
    sget-object v1, Lcom/qti/dpm/DpmRequest;->sPool:Lcom/qti/dpm/DpmRequest;

    iput-object v1, p0, Lcom/qti/dpm/DpmRequest;->mNext:Lcom/qti/dpm/DpmRequest;

    .line 97
    sput-object p0, Lcom/qti/dpm/DpmRequest;->sPool:Lcom/qti/dpm/DpmRequest;

    .line 98
    sget v1, Lcom/qti/dpm/DpmRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/qti/dpm/DpmRequest;->sPoolSize:I

    .line 100
    :cond_0
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "sn":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_0
    rsub-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_0

    .line 122
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
