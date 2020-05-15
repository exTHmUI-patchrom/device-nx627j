.class public Landroid/app/servertransaction/ActivityConfigurationChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ActivityConfigurationChangeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 81
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;

    .line 34
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 54
    const-class v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 55
    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 56
    .local v0, "instance":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>()V

    move-object v0, v1

    .line 59
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 61
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    if-ne p0, p1, :cond_0

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 104
    .local v0, "other":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 101
    .end local v0    # "other":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
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

    .line 42
    const-string v0, "activityConfigChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v3, -0x1

    invoke-virtual {p1, p2, v0, v3}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 44
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 45
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityConfigurationChange{config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

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
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    return-void
.end method
