.class public abstract Landroid/net/lowpan/LowpanCommissioningSession$Callback;
.super Ljava/lang/Object;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 0

    .line 55
    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .locals 0
    .param p1, "packet"    # [B

    .line 53
    return-void
.end method
