.class Landroid/os/Messenger$1;
.super Ljava/lang/Object;
.source "Messenger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Messenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/Messenger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 121
    .local v0, "target":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, "pid":I
    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 123
    .local v2, "messenger":Landroid/os/Messenger;
    :goto_0
    if-eqz v2, :cond_1

    .line 124
    invoke-static {v2, v1}, Landroid/os/Messenger;->access$002(Landroid/os/Messenger;I)I

    .line 126
    :cond_1
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Messenger$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/Messenger;
    .locals 1
    .param p1, "size"    # I

    .line 131
    new-array v0, p1, [Landroid/os/Messenger;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Messenger$1;->newArray(I)[Landroid/os/Messenger;

    move-result-object p1

    return-object p1
.end method
