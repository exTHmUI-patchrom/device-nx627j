.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .line 71
    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 74
    .local v0, "router":Landroid/media/MediaRouter;
    invoke-static {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const v1, 0x1030132

    goto :goto_0

    .line 76
    :cond_0
    const v1, 0x103012e

    .line 78
    .local v1, "theme":I
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 79
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v3, "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    return-object v3

    .line 80
    .end local v3    # "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v3, "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {v3, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 82
    invoke-virtual {v3, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object v3
.end method

.method public static showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .line 43
    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 45
    .local v0, "router":Landroid/media/MediaRouter;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 47
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 48
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const-string v3, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 60
    const-string v3, "MediaRouter"

    const-string/jumbo v5, "showDialog(): Route controller dialog already showing!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v4

    .line 63
    :cond_1
    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v3}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    .line 64
    .local v3, "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    const-string v4, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-object v3

    .line 49
    .end local v3    # "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    :cond_2
    :goto_0
    const-string v3, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 50
    const-string v3, "MediaRouter"

    const-string/jumbo v5, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v4

    .line 53
    :cond_3
    new-instance v3, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 54
    .local v3, "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-virtual {v3, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    .line 55
    invoke-virtual {v3, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v4, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    return-object v3
.end method
