.class Landroid/widget/RemoteViews$SetDrawableTint;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableTint"
.end annotation


# instance fields
.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field targetBackground:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;IZILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "targetBackground"    # Z
    .param p4, "colorFilter"    # I
    .param p5, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1100
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1101
    iput p2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->viewId:I

    .line 1102
    iput-boolean p3, p0, Landroid/widget/RemoteViews$SetDrawableTint;->targetBackground:Z

    .line 1103
    iput p4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->colorFilter:I

    .line 1104
    iput-object p5, p0, Landroid/widget/RemoteViews$SetDrawableTint;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 1105
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1107
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->viewId:I

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->targetBackground:Z

    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->colorFilter:I

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 1112
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1123
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1124
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1127
    :cond_0
    const/4 v1, 0x0

    .line 1128
    .local v1, "targetDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->targetBackground:Z

    if-eqz v2, :cond_1

    .line 1129
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 1130
    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 1131
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 1132
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1135
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 1136
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableTint;->colorFilter:I

    iget-object v4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1138
    :cond_3
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 1142
    const/4 v0, 0x3

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1115
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->targetBackground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    return-void
.end method
