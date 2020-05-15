.class final Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 191
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 192
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 193
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 194
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 221
    move-object v0, p2

    .line 222
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090088

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 226
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, "text1":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 230
    .local v5, "description":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    const-string v1, ""

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 244
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 246
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    .line 248
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->access$100(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 199
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-static {v2}, Lcom/android/internal/app/MediaRouteChooserDialog;->access$100(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 201
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/MediaRouteChooserDialog;->onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->add(Ljava/lang/Object;)V

    .line 199
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->sort(Ljava/util/Comparator;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->notifyDataSetChanged()V

    .line 207
    return-void
.end method
