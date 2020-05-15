.class Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;
.super Ljava/lang/Object;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgData"
.end annotation


# instance fields
.field color:I

.field frequency:I

.field light:I

.field mode:I

.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->light:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->mode:I

    .line 169
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->frequency:I

    .line 170
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->color:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p2, "x1"    # Lcn/nubia/server/breathinglight/BreathingLightService$1;

    .line 166
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 173
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->color:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .line 181
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->frequency:I

    return v0
.end method

.method public getLight()I
    .locals 1

    .line 189
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->light:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 197
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->mode:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 177
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->color:I

    .line 178
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "frequency"    # I

    .line 185
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->frequency:I

    .line 186
    return-void
.end method

.method public setLight(I)V
    .locals 0
    .param p1, "light"    # I

    .line 193
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->light:I

    .line 194
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 201
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->mode:I

    .line 202
    return-void
.end method
