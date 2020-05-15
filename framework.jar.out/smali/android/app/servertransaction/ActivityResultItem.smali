.class public Landroid/app/servertransaction/ActivityResultItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ActivityResultItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityResultItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResultInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroid/app/servertransaction/ActivityResultItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityResultItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityResultItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 86
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityResultItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ActivityResultItem$1;

    .line 35
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;)",
            "Landroid/app/servertransaction/ActivityResultItem;"
        }
    .end annotation

    .line 60
    .local p0, "resultInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const-class v0, Landroid/app/servertransaction/ActivityResultItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ActivityResultItem;

    .line 61
    .local v0, "instance":Landroid/app/servertransaction/ActivityResultItem;
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Landroid/app/servertransaction/ActivityResultItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ActivityResultItem;-><init>()V

    move-object v0, v1

    .line 64
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    .line 66
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    if-ne p0, p1, :cond_0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityResultItem;

    .line 109
    .local v0, "other":Landroid/app/servertransaction/ActivityResultItem;
    iget-object v1, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    iget-object v2, v0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 106
    .end local v0    # "other":Landroid/app/servertransaction/ActivityResultItem;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 48
    const-string v0, "activityDeliverResult"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    const-string v3, "ACTIVITY_RESULT"

    invoke-virtual {p1, p2, v0, v3}, Landroid/app/ClientTransactionHandler;->handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V

    .line 50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    .line 72
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityResultItem{resultInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 82
    return-void
.end method
