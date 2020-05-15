.class public Landroid/app/Notification$DecoratedMediaCustomViewStyle;
.super Landroid/app/Notification$MediaStyle;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8237
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 8238
    return-void
.end method

.method private buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "customContent"    # Landroid/widget/RemoteViews;

    .line 8307
    if-eqz p3, :cond_0

    .line 8310
    invoke-virtual {p3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p3

    .line 8311
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/RemoteViews;->overrideTextColors(I)V

    .line 8312
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 8313
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 8314
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setReapplyDisallowed()V

    .line 8316
    :cond_0
    return-object p1
.end method

.method private makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "customRemoteView"    # Landroid/widget/RemoteViews;

    .line 8269
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8270
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 8271
    const v1, 0x102033e

    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 8273
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eq p1, v1, :cond_1

    .line 8274
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/Notification$MediaStyle;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8275
    const v1, 0x102033c

    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 8278
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 2
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 8298
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8302
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 8299
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public displayCustomViewInline()Z
    .locals 1

    .line 8244
    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    .line 8262
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 8263
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 8264
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8265
    .local v0, "customRemoteView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .line 8252
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Notification$MediaStyle;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8253
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8254
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8253
    const v2, 0x102033c

    invoke-direct {p0, v0, v2, v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "increasedHeight"    # Z

    .line 8287
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 8288
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 8289
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8290
    .local v0, "customRemoteView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method
