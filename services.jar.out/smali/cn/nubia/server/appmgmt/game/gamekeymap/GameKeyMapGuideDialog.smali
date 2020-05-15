.class public Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;
.super Landroid/app/Dialog;
.source "GameKeyMapGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameKeyMapGuideDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuideClickInterface:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;

.field private mImage1:Landroid/view/View;

.field private mImage2:Landroid/view/View;

.field private mImage3:Landroid/view/View;

.field private mImage4:Landroid/view/View;

.field private mImageViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIndication1:Landroid/widget/ImageView;

.field private mIndication2:Landroid/widget/ImageView;

.field private mIndication3:Landroid/widget/ImageView;

.field private mIndication4:Landroid/widget/ImageView;

.field private mJoinButton:Landroid/widget/Button;

.field private mViewPagerAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mViewPaper:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const v0, 0x30e000b

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImageViewList:Ljava/util/List;

    .line 141
    new-instance v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;-><init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mViewPagerAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 44
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImageViewList:Ljava/util/List;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    const v2, 0x30a0016

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->setContentView(Landroid/view/View;)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    const v3, 0x3080093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mViewPaper:Lcom/android/internal/widget/ViewPager;

    .line 60
    const v3, 0x30a0017

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage1:Landroid/view/View;

    .line 61
    const v3, 0x30a0018

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage2:Landroid/view/View;

    .line 62
    const v3, 0x30a0019

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage3:Landroid/view/View;

    .line 63
    const v3, 0x30a001a

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage4:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImageViewList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage1:Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImageViewList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage2:Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImageViewList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage3:Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImageViewList:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage4:Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mImage4:Landroid/view/View;

    const v3, 0x3080061

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mJoinButton:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mViewPaper:Lcom/android/internal/widget/ViewPager;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mViewPagerAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 72
    const v1, 0x308008f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication1:Landroid/widget/ImageView;

    .line 73
    const v1, 0x3080090

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication2:Landroid/widget/ImageView;

    .line 74
    const v1, 0x3080091

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication3:Landroid/widget/ImageView;

    .line 75
    const v1, 0x3080092

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication4:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication1:Landroid/widget/ImageView;

    const v3, 0x307006e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication2:Landroid/widget/ImageView;

    const v3, 0x307006f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mIndication4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 81
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mViewPaper:Lcom/android/internal/widget/ViewPager;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$1;-><init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 126
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->setAttributes()V

    .line 127
    return-void
.end method

.method private setAttributes()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 131
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 132
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 133
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 135
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 136
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 176
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x3080061

    if-ne v1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;->doOk()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->initView()V

    .line 51
    return-void
.end method

.method public setGuideClickListener(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;)V
    .locals 0
    .param p1, "guideClickInterface"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;

    .line 166
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;

    .line 167
    return-void
.end method

.method public show()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 172
    return-void
.end method
