.class public final Landroid/hardware/ConsumerIrManager;
.super Ljava/lang/Object;
.source "ConsumerIrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsumerIr"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/IConsumerIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    .line 44
    const-string v0, "consumer_ir"

    .line 45
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/hardware/IConsumerIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IConsumerIrService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    .line 46
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    .locals 7

    .line 133
    iget-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "ConsumerIr"

    const-string/jumbo v2, "no consumer ir service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v1

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    invoke-interface {v0}, Landroid/hardware/IConsumerIrService;->getCarrierFrequencies()[I

    move-result-object v0

    .line 140
    .local v0, "freqs":[I
    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "ConsumerIr"

    const-string v3, "consumer ir service returned an uneven number of frequencies."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v1

    .line 144
    :cond_1
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    .line 146
    .local v1, "range":[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    const/4 v2, 0x0

    .line 146
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 147
    div-int/lit8 v3, v2, 0x2

    new-instance v4, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    aget v5, v0, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    invoke-direct {v4, p0, v5, v6}, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;-><init>(Landroid/hardware/ConsumerIrManager;II)V

    aput-object v4, v1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 150
    .end local v0    # "freqs":[I
    .end local v1    # "range":[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasIrEmitter()Z
    .locals 2

    .line 54
    iget-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "ConsumerIr"

    const-string/jumbo v1, "no consumer ir service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    invoke-interface {v0}, Landroid/hardware/IConsumerIrService;->hasIrEmitter()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public transmit(I[I)V
    .locals 2
    .param p1, "carrierFrequency"    # I
    .param p2, "pattern"    # [I

    .line 78
    iget-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "ConsumerIr"

    const-string v1, "failed to transmit; no consumer ir service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/IConsumerIrService;->transmit(Ljava/lang/String;I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
