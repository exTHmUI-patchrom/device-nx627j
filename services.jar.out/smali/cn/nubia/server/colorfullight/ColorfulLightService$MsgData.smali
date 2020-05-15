.class final Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;
.super Ljava/lang/Object;
.source "ColorfulLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgData"
.end annotation


# instance fields
.field private final mFlashMode:I

.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;I)V
    .locals 0
    .param p2, "flashMode"    # I

    .line 628
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput p2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;->mFlashMode:I

    .line 630
    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;

    .line 625
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;->getFlashMode()I

    move-result v0

    return v0
.end method

.method private getFlashMode()I
    .locals 1

    .line 633
    iget v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;->mFlashMode:I

    return v0
.end method
