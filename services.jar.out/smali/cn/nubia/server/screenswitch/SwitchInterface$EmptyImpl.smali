.class Lcn/nubia/server/screenswitch/SwitchInterface$EmptyImpl;
.super Lcn/nubia/server/screenswitch/SwitchInterface;
.source "SwitchInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/SwitchInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;-><init>(Landroid/content/Context;)V

    .line 101
    return-void
.end method


# virtual methods
.method public createRealTarget(I)I
    .locals 1
    .param p1, "target"    # I

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method execImpl(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method getDisplayId()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public lcdStateFile()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, ""

    return-object v0
.end method

.method needSwitch(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 120
    const/4 v0, 0x0

    return v0
.end method
