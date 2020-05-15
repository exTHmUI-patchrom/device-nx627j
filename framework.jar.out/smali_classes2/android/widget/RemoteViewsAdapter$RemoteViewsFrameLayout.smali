.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/appwidget/AppWidgetHostView;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsFrameLayout"
.end annotation


# instance fields
.field public cacheIndex:I

.field private final mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 362
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    .line 363
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 364
    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 4

    .line 386
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v0

    iget v0, v0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I

    .line 388
    .local v0, "viewHeight":I
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    .local v1, "loadingTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 392
    return-object v1
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 1

    .line 403
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getDefaultView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteContext()Landroid/content/Context;
    .locals 1

    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Z)V
    .locals 1
    .param p1, "view"    # Landroid/widget/RemoteViews;
    .param p2, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p3, "forceApplyAsync"    # Z

    .line 376
    invoke-virtual {p0, p2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 377
    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 378
    return-void
.end method
