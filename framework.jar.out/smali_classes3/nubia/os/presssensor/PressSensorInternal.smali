.class public abstract Lnubia/os/presssensor/PressSensorInternal;
.super Ljava/lang/Object;
.source "PressSensorInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract noteKeyguardStateChanged(I)V
.end method

.method public abstract noteScreenStateChanged(I)V
.end method

.method public abstract onApplicationManagerSystemReady()V
.end method

.method public abstract onSwitchScreenIneffective()V
.end method
