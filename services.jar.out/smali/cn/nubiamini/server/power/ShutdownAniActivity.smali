.class public Lcn/nubiamini/server/power/ShutdownAniActivity;
.super Landroid/app/Activity;
.source "ShutdownAniActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcn/nubiamini/server/power/ShutdownAniActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-virtual {p0}, Lcn/nubiamini/server/power/ShutdownAniActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubiamini/server/power/ShutdownAniActivity;->requestWindowFeature(I)Z

    .line 41
    const-string v0, "ctl.start"

    const-string/jumbo v1, "shutdownanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
