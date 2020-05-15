.class public Landroid/app/servertransaction/MoveToDisplayItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "MoveToDisplayItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/MoveToDisplayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mTargetDisplayId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Landroid/app/servertransaction/MoveToDisplayItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/MoveToDisplayItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/MoveToDisplayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 83
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/MoveToDisplayItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/MoveToDisplayItem$1;

    .line 33
    invoke-direct {p0, p1}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;
    .locals 2
    .param p0, "targetDisplayId"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 53
    const-class v0, Landroid/app/servertransaction/MoveToDisplayItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/MoveToDisplayItem;

    .line 54
    .local v0, "instance":Landroid/app/servertransaction/MoveToDisplayItem;
    if-nez v0, :cond_0

    .line 55
    new-instance v1, Landroid/app/servertransaction/MoveToDisplayItem;

    invoke-direct {v1}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>()V

    move-object v0, v1

    .line 57
    :cond_0
    iput p0, v0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 58
    iput-object p1, v0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 60
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/MoveToDisplayItem;

    .line 105
    .local v2, "other":Landroid/app/servertransaction/MoveToDisplayItem;
    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    iget v4, v2, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v2, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 106
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 102
    .end local v2    # "other":Landroid/app/servertransaction/MoveToDisplayItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 41
    const-string v0, "activityMovedToDisplay"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 42
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {p1, p2, v0, v3}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 43
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    return-void
.end method

.method public hashCode()I
    .locals 4

    .line 111
    const/16 v0, 0x11

    .line 112
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    add-int/2addr v2, v3

    .line 113
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 114
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public recycle()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoveToDisplayItem{targetDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

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

    .line 76
    iget v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
