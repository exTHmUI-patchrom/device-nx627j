.class public Landroid/app/servertransaction/ConfigurationChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ConfigurationChangeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 78
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ConfigurationChangeItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ConfigurationChangeItem$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 52
    const-class v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    .line 53
    .local v0, "instance":Landroid/app/servertransaction/ConfigurationChangeItem;
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Landroid/app/servertransaction/ConfigurationChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>()V

    move-object v0, v1

    .line 56
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 58
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    if-ne p0, p1, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    .line 101
    .local v0, "other":Landroid/app/servertransaction/ConfigurationChangeItem;
    iget-object v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 98
    .end local v0    # "other":Landroid/app/servertransaction/ConfigurationChangeItem;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 42
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 36
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 37
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 64
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationChangeItem{config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

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

    .line 73
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
