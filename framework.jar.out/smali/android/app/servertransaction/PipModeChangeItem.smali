.class public Landroid/app/servertransaction/PipModeChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "PipModeChangeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PipModeChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsInPipMode:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/app/servertransaction/PipModeChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PipModeChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PipModeChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    .line 79
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PipModeChangeItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/PipModeChangeItem$1;

    .line 32
    invoke-direct {p0, p1}, Landroid/app/servertransaction/PipModeChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/PipModeChangeItem;
    .locals 2
    .param p0, "isInPipMode"    # Z
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 50
    const-class v0, Landroid/app/servertransaction/PipModeChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PipModeChangeItem;

    .line 51
    .local v0, "instance":Landroid/app/servertransaction/PipModeChangeItem;
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Landroid/app/servertransaction/PipModeChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PipModeChangeItem;-><init>()V

    move-object v0, v1

    .line 54
    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    .line 55
    iput-object p1, v0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 57
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/PipModeChangeItem;

    .line 102
    .local v2, "other":Landroid/app/servertransaction/PipModeChangeItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v4, v2, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 103
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 99
    .end local v2    # "other":Landroid/app/servertransaction/PipModeChangeItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 40
    iget-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    iget-object v1, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    .line 41
    return-void
.end method

.method public hashCode()I
    .locals 4

    .line 108
    const/16 v0, 0x11

    .line 109
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    add-int/2addr v2, v3

    .line 110
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 111
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public recycle()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 64
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PipModeChangeItem{isInPipMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

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

    .line 72
    iget-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 73
    iget-object v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
