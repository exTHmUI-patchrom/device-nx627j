.class Landroid/app/VrManager$CallbackEntry;
.super Ljava/lang/Object;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackEntry"
.end annotation


# instance fields
.field final mCallback:Landroid/app/VrStateCallback;

.field final mHandler:Landroid/os/Handler;

.field final mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

.field final mStateCallback:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method constructor <init>(Landroid/app/VrStateCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/VrStateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/app/VrManager$CallbackEntry$1;

    invoke-direct {v0, p0}, Landroid/app/VrManager$CallbackEntry$1;-><init>(Landroid/app/VrManager$CallbackEntry;)V

    iput-object v0, p0, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    .line 35
    new-instance v0, Landroid/app/VrManager$CallbackEntry$2;

    invoke-direct {v0, p0}, Landroid/app/VrManager$CallbackEntry$2;-><init>(Landroid/app/VrManager$CallbackEntry;)V

    iput-object v0, p0, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 46
    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    .line 47
    iput-object p2, p0, Landroid/app/VrManager$CallbackEntry;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method
