.class public final Landroid/hardware/wifi/V1_0/Constants$NanParamSizeLimits;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NanParamSizeLimits"
.end annotation


# static fields
.field public static final MAX_PASSPHRASE_LENGTH:I = 0x3f

.field public static final MIN_PASSPHRASE_LENGTH:I = 0x8


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/wifi/V1_0/Constants;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/V1_0/Constants;

    .line 8
    iput-object p1, p0, Landroid/hardware/wifi/V1_0/Constants$NanParamSizeLimits;->this$0:Landroid/hardware/wifi/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
