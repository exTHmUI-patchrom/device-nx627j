.class public Landroid/view/WindowId;
.super Ljava/lang/Object;
.source "WindowId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowId$FocusObserver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mToken:Landroid/view/IWindowId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 199
    new-instance v0, Landroid/view/WindowId$1;

    invoke-direct {v0}, Landroid/view/WindowId$1;-><init>()V

    sput-object v0, Landroid/view/WindowId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {p1}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowId;)V
    .locals 0
    .param p1, "target"    # Landroid/view/IWindowId;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    .line 221
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 169
    instance-of v0, p1, Landroid/view/WindowId;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/view/WindowId;

    iget-object v1, v1, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTarget()Landroid/view/IWindowId;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 2

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->isFocused()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public registerFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/view/WindowId$FocusObserver;

    .line 134
    iget-object v0, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    invoke-interface {v1, v2}, Landroid/view/IWindowId;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 145
    return-void

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Focus observer already registered with input token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IntentSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/view/WindowId$FocusObserver;

    .line 151
    iget-object v0, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 156
    :try_start_1
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    invoke-interface {v1, v2}, Landroid/view/IWindowId;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 159
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 160
    return-void

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Focus observer not registered with input token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 197
    return-void
.end method
