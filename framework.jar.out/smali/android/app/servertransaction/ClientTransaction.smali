.class public Landroid/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/app/servertransaction/ObjectPoolItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityToken:Landroid/os/IBinder;

.field private mClient:Landroid/app/IApplicationThread;

.field private mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Landroid/app/servertransaction/ClientTransaction$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransaction$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 191
    .local v0, "readActivityToken":Z
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ActivityLifecycleItem;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 196
    .local v1, "readActivityCallbacks":Z
    if-eqz v1, :cond_1

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    .line 198
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 200
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransaction$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ClientTransaction$1;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;
    .locals 2
    .param p0, "client"    # Landroid/app/IApplicationThread;
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 139
    const-class v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 140
    .local v0, "instance":Landroid/app/servertransaction/ClientTransaction;
    if-nez v0, :cond_0

    .line 141
    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1}, Landroid/app/servertransaction/ClientTransaction;-><init>()V

    move-object v0, v1

    .line 143
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 144
    iput-object p1, v0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 146
    return-object v0
.end method


# virtual methods
.method public addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .param p1, "activityCallback"    # Landroid/app/servertransaction/ClientTransactionItem;

    .line 69
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 221
    return v0

    .line 223
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ClientTransaction;

    .line 227
    .local v2, "other":Landroid/app/servertransaction/ClientTransaction;
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 228
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 224
    .end local v2    # "other":Landroid/app/servertransaction/ClientTransaction;
    :cond_3
    :goto_1
    return v1
.end method

.method public getActivityToken()Landroid/os/IBinder;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getClient()Landroid/app/IApplicationThread;
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 235
    const/16 v0, 0x11

    .line 236
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 237
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 238
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 4
    .param p1, "clientTransactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 107
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 109
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Landroid/app/servertransaction/ClientTransactionItem;->preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Landroid/app/servertransaction/ActivityLifecycleItem;->preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V

    .line 116
    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 151
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 154
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->recycle()V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    .end local v0    # "size":I
    :cond_1
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 160
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 162
    :cond_2
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 163
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 164
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 165
    return-void
.end method

.method public schedule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 130
    return-void
.end method

.method public setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 0
    .param p1, "stateRequest"    # Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 98
    iput-object p1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 174
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 175
    .local v0, "writeActivityToken":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    if-eqz v0, :cond_1

    .line 177
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 179
    :cond_1
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 181
    .local v1, "writeActivityCallbacks":Z
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    if-eqz v1, :cond_3

    .line 183
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 185
    :cond_3
    return-void
.end method
