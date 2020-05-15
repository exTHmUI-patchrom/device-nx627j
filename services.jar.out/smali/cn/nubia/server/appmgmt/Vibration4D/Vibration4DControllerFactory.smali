.class public Lcn/nubia/server/appmgmt/Vibration4D/Vibration4DControllerFactory;
.super Ljava/lang/Object;
.source "Vibration4DControllerFactory.java"


# static fields
.field private static mIsPro1Solution:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const-string v0, "1"

    const-string/jumbo v1, "nubia_4d_vibration_feature"

    const-string/jumbo v2, "vibration_4d_product_solution"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4DControllerFactory;->mIsPro1Solution:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVibration4DController(Landroid/content/Context;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 12
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4DControllerFactory;->mIsPro1Solution:Z

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
