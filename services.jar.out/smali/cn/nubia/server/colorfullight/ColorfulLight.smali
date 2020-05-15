.class public final Lcn/nubia/server/colorfullight/ColorfulLight;
.super Ljava/lang/Object;
.source "ColorfulLight.java"


# static fields
.field private static final DEBUG:Z

.field private static final LIGHT_ID_MULTICOLOR_LED:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorfulLight:Lcom/android/server/lights/Light;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const-class v0, Lcn/nubia/server/colorfullight/ColorfulLight;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLight;->TAG:Ljava/lang/String;

    .line 10
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLight;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLight;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLight;->mColorfulLight:Lcom/android/server/lights/Light;

    .line 19
    return-void
.end method


# virtual methods
.method public setColorfulLight(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .line 22
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLight;->mColorfulLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] setColorfulLight: flashMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLight;->mColorfulLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 26
    :cond_0
    return-void
.end method
