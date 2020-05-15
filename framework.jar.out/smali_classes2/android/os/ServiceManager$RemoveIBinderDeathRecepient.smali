.class public Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveIBinderDeathRecepient"
.end annotation


# instance fields
.field mObservingServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ObservingServiceName"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;->mObservingServiceName:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 125
    invoke-static {}, Landroid/os/ServiceManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;->mObservingServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;->mObservingServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " died, removed from binder cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
