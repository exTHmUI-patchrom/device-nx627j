.class public abstract Landroid/net/lowpan/LowpanManager$Callback;
.super Ljava/lang/Object;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V
    .locals 0
    .param p1, "lowpanInterface"    # Landroid/net/lowpan/LowpanInterface;

    .line 44
    return-void
.end method

.method public onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V
    .locals 0
    .param p1, "lowpanInterface"    # Landroid/net/lowpan/LowpanInterface;

    .line 46
    return-void
.end method
