.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field public static final MICRO:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mBackAnimView:Landroid/view/View;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field protected mListView:Landroid/widget/ListView;

.field protected mMessage:Ljava/lang/CharSequence;

.field private mMessageHyphenationFrequency:Ljava/lang/Integer;

.field private mMessageMovementMethod:Landroid/text/method/MovementMethod;

.field protected mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mNubiaDialog:Lnubia/widget/IDialog;

.field private mNubiaLeftButtonBgID:I

.field private mNubiaMiddleButtonBgID:I

.field private mNubiaRightButtonBgID:I

.field protected mScrollView:Landroid/widget/ScrollView;

.field private mShowTitle:Z

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslatePadding:F

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 117
    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 132
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 143
    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 154
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 225
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 226
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 227
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 228
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 230
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 233
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, 0x1090028

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 235
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 237
    const/16 v0, 0xf

    const v2, 0x10900e5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 240
    const/16 v0, 0x10

    const v2, 0x1090013

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 243
    const/16 v0, 0x15

    const v2, 0x1090012

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 246
    const/16 v0, 0xe

    const v2, 0x1090011

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 249
    const/4 v0, 0x1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    .line 251
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnubia/widget/NubiaDialog;

    invoke-direct {v2, p1}, Lnubia/widget/NubiaDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 252
    :cond_0
    new-instance v2, Lnubia/widget/ProtoDialog;

    invoke-direct {v2, p1}, Lnubia/widget/ProtoDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 253
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v2}, Lnubia/widget/IDialog;->resetAlertDialogLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 255
    const v2, 0x30700a8

    const v3, 0x30700ad

    const v4, 0x30700b2

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setNubiaButtonBackground(III)V

    .line 262
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    invoke-virtual {p3, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .line 83
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .line 83
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 270
    return v1

    .line 273
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 274
    return v2

    .line 277
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 279
    .local v3, "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 280
    add-int/lit8 v3, v3, -0x1

    .line 281
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 282
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    return v1

    .line 287
    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .line 963
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 964
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 965
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 966
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x10202df

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 968
    .local v1, "leftSpacer":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10203b6

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 972
    .local v3, "rightSpacer":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 973
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :cond_1
    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .line 211
    sget-object v0, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x101005d

    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 214
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 220
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 218
    :cond_0
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2
.end method

.method private hideNubiaContentTitleDivider()V
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x308008b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1507
    .local v0, "nubiaDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1508
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    :cond_0
    return-void
.end method

.method private isNubiaCenterDialog()Z
    .locals 2

    .line 1451
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    const v1, 0x30a000d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 889
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 890
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 892
    :cond_1
    if-eqz p2, :cond_3

    .line 893
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :cond_3
    return-void
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .line 1541
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaRightButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1545
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaLeftButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1546
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaMiddleButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaRightButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1550
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mNubiaLeftButtonBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1552
    :cond_1
    :goto_0
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 547
    if-nez p1, :cond_1

    .line 549
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 550
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 553
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 557
    :cond_1
    if-eqz p2, :cond_2

    .line 558
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 559
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 560
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 565
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 566
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 569
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private selectContentView()I
    .locals 2

    .line 305
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 306
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 308
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 309
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 312
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 26
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 979
    const/4 v3, 0x0

    .line 980
    .local v3, "fullDark":I
    const/4 v4, 0x0

    .line 981
    .local v4, "topDark":I
    const/4 v5, 0x0

    .line 982
    .local v5, "centerDark":I
    const/4 v6, 0x0

    .line 983
    .local v6, "bottomDark":I
    const/4 v7, 0x0

    .line 984
    .local v7, "fullBright":I
    const/4 v8, 0x0

    .line 985
    .local v8, "topBright":I
    const/4 v9, 0x0

    .line 986
    .local v9, "centerBright":I
    const/4 v10, 0x0

    .line 987
    .local v10, "bottomBright":I
    const/4 v11, 0x0

    .line 991
    .local v11, "bottomMedium":I
    const/4 v12, 0x1

    const/16 v13, 0x11

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 993
    .local v13, "needsDefaultBackgrounds":Z
    if-eqz v13, :cond_0

    .line 994
    const v3, 0x1080696

    .line 995
    const v4, 0x10806a4

    .line 996
    const v5, 0x1080693

    .line 997
    const v6, 0x1080690

    .line 998
    const v7, 0x1080695

    .line 999
    const v8, 0x10806a3

    .line 1000
    const v9, 0x1080692

    .line 1001
    const v10, 0x108068f

    .line 1002
    const v11, 0x1080691

    .line 1015
    :cond_0
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v15, 0x5

    invoke-interface {v14, v1, v15, v8}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v8

    .line 1017
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v14, v1, v12, v4}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v4

    .line 1019
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v15, 0x6

    invoke-interface {v14, v1, v15, v9}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v9

    .line 1021
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v15, 0x2

    invoke-interface {v14, v1, v15, v5}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v5

    .line 1033
    const/4 v14, 0x4

    new-array v15, v14, [Landroid/view/View;

    .line 1034
    .local v15, "views":[Landroid/view/View;
    new-array v12, v14, [Z

    .line 1035
    .local v12, "light":[Z
    const/16 v17, 0x0

    .line 1036
    .local v17, "lastView":Landroid/view/View;
    const/16 v18, 0x0

    .line 1038
    .local v18, "lastLight":Z
    const/16 v19, 0x0

    .line 1039
    .local v19, "pos":I
    const/4 v14, 0x0

    if-eqz p6, :cond_1

    .line 1040
    aput-object p2, v15, v19

    .line 1041
    aput-boolean v14, v12, v19

    .line 1042
    add-int/lit8 v19, v19, 0x1

    .line 1050
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v20, v4

    const/16 v4, 0x8

    .end local v4    # "topDark":I
    .local v20, "topDark":I
    if-ne v14, v4, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v14, p3

    :goto_0
    aput-object v14, v15, v19

    .line 1051
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    aput-boolean v14, v12, v19

    .line 1052
    const/4 v14, 0x1

    add-int/lit8 v19, v19, 0x1

    .line 1054
    if-eqz p7, :cond_4

    .line 1055
    aput-object p4, v15, v19

    .line 1056
    iget-boolean v4, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v4, v12, v19

    .line 1057
    add-int/lit8 v19, v19, 0x1

    .line 1060
    :cond_4
    if-eqz p8, :cond_5

    .line 1061
    aput-object p5, v15, v19

    .line 1062
    const/16 v16, 0x1

    aput-boolean v16, v12, v19

    .line 1065
    :cond_5
    const/16 v21, 0x0

    .line 1066
    .local v21, "setView":Z
    const/16 v19, 0x0

    move/from16 v22, v5

    move-object/from16 v5, v17

    move/from16 v4, v19

    .end local v17    # "lastView":Landroid/view/View;
    .end local v19    # "pos":I
    .local v4, "pos":I
    .local v5, "lastView":Landroid/view/View;
    .local v22, "centerDark":I
    :goto_2
    move/from16 v23, v8

    array-length v8, v15

    .end local v8    # "topBright":I
    .local v23, "topBright":I
    if-ge v4, v8, :cond_b

    .line 1067
    aget-object v8, v15, v4

    .line 1068
    .local v8, "v":Landroid/view/View;
    if-nez v8, :cond_6

    .line 1069
    nop

    .line 1066
    move/from16 v24, v9

    goto :goto_7

    .line 1072
    :cond_6
    if-eqz v5, :cond_a

    .line 1073
    if-nez v21, :cond_8

    .line 1074
    if-eqz v18, :cond_7

    move/from16 v24, v9

    move/from16 v9, v23

    goto :goto_3

    :cond_7
    move/from16 v24, v9

    move/from16 v9, v20

    .end local v9    # "centerBright":I
    .local v24, "centerBright":I
    :goto_3
    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 1076
    .end local v24    # "centerBright":I
    .restart local v9    # "centerBright":I
    :cond_8
    move/from16 v24, v9

    .end local v9    # "centerBright":I
    .restart local v24    # "centerBright":I
    if-eqz v18, :cond_9

    move/from16 v9, v24

    goto :goto_4

    :cond_9
    move/from16 v9, v22

    :goto_4
    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1078
    :goto_5
    const/16 v21, 0x1

    goto :goto_6

    .line 1081
    .end local v24    # "centerBright":I
    .restart local v9    # "centerBright":I
    :cond_a
    move/from16 v24, v9

    .end local v9    # "centerBright":I
    .restart local v24    # "centerBright":I
    :goto_6
    move-object v5, v8

    .line 1082
    aget-boolean v8, v12, v4

    .line 1066
    .end local v18    # "lastLight":Z
    .local v8, "lastLight":Z
    move/from16 v18, v8

    .end local v8    # "lastLight":Z
    .restart local v18    # "lastLight":Z
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v23

    move/from16 v9, v24

    goto :goto_2

    .line 1085
    .end local v24    # "centerBright":I
    .restart local v9    # "centerBright":I
    :cond_b
    move/from16 v24, v9

    .end local v9    # "centerBright":I
    .restart local v24    # "centerBright":I
    if-eqz v5, :cond_10

    .line 1086
    if-eqz v21, :cond_e

    .line 1094
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v9, 0x7

    invoke-interface {v8, v1, v9, v10}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v10

    .line 1096
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/16 v9, 0x8

    invoke-interface {v8, v1, v9, v11}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v11

    .line 1098
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v9, 0x3

    invoke-interface {v8, v1, v9, v6}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v6

    .line 1104
    nop

    .line 1105
    if-eqz v18, :cond_d

    if-eqz p8, :cond_c

    .line 1104
    move v8, v11

    goto :goto_8

    :cond_c
    move v8, v10

    goto :goto_8

    :cond_d
    move v8, v6

    :goto_8
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 1114
    :cond_e
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v9, 0x4

    invoke-interface {v8, v1, v9, v7}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v7

    .line 1116
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9, v3}, Lnubia/widget/IDialog;->getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 1119
    if-eqz v18, :cond_f

    move v8, v7

    goto :goto_9

    :cond_f
    move v8, v3

    :goto_9
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1123
    :cond_10
    :goto_a
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1124
    .local v8, "listView":Landroid/widget/ListView;
    if-eqz v8, :cond_11

    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_11

    .line 1125
    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1126
    iget v9, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1127
    .local v9, "checkedItem":I
    const/4 v0, -0x1

    if-le v9, v0, :cond_11

    .line 1128
    const/4 v0, 0x1

    invoke-virtual {v8, v9, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1129
    const/16 v0, 0x13

    .line 1130
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1129
    invoke-virtual {v8, v9, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1133
    .end local v9    # "checkedItem":I
    :cond_11
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 714
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 716
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 718
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 719
    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 720
    .end local v0    # "customView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 723
    .restart local v0    # "customView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    .line 724
    .local v1, "hasCustomView":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 725
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 729
    :cond_4
    if-eqz v1, :cond_7

    .line 736
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 737
    invoke-interface {v3}, Lnubia/widget/IDialog;->getCustomId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 739
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 742
    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 746
    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 747
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 749
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_6
    goto :goto_1

    .line 750
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 752
    :goto_1
    return-void
.end method

.method private setupDecor()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 516
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102036b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 518
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 530
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 531
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 533
    :cond_0
    return-void
.end method

.method private setupView()V
    .locals 24

    .line 585
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v1, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 586
    invoke-interface {v1}, Lnubia/widget/IDialog;->getParentPanelId()I

    move-result v1

    .line 585
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 587
    .local v10, "parentPanel":Landroid/view/View;
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 588
    invoke-interface {v0}, Lnubia/widget/IDialog;->getTopPanelId()I

    move-result v0

    .line 587
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 589
    .local v11, "defaultTopPanel":Landroid/view/View;
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 590
    invoke-interface {v0}, Lnubia/widget/IDialog;->getContentPanelId()I

    move-result v0

    .line 589
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 591
    .local v12, "defaultContentPanel":Landroid/view/View;
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 592
    invoke-interface {v0}, Lnubia/widget/IDialog;->getButtonPanelId()I

    move-result v0

    .line 591
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 604
    .local v13, "defaultButtonPanel":Landroid/view/View;
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 605
    invoke-interface {v0}, Lnubia/widget/IDialog;->getCustomPanelId()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/ViewGroup;

    .line 607
    .local v14, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v14}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 619
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 620
    invoke-interface {v0}, Lnubia/widget/IDialog;->getTopPanelId()I

    move-result v0

    .line 619
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 621
    .local v15, "customTopPanel":Landroid/view/View;
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 622
    invoke-interface {v0}, Lnubia/widget/IDialog;->getContentPanelId()I

    move-result v0

    .line 621
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 623
    .local v8, "customContentPanel":Landroid/view/View;
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 624
    invoke-interface {v0}, Lnubia/widget/IDialog;->getButtonPanelId()I

    move-result v0

    .line 623
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 628
    .local v7, "customButtonPanel":Landroid/view/View;
    invoke-direct {v9, v15, v11}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 629
    .local v6, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v8, v12}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 630
    .local v5, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v7, v13}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 632
    .local v4, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v9, v5}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 633
    invoke-virtual {v9, v4}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 634
    invoke-virtual {v9, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 636
    const/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz v14, :cond_0

    .line 637
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move/from16 v16, v3

    .line 638
    .local v16, "hasCustomPanel":Z
    if-eqz v6, :cond_1

    .line 639
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 640
    .local v3, "hasTopPanel":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 641
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    .line 644
    .local v1, "hasButtonPanel":Z
    if-nez v1, :cond_4

    .line 645
    if-eqz v5, :cond_3

    .line 646
    const v0, 0x1020454

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 647
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 648
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 652
    .end local v0    # "spacer":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->hideNubiaButtonBackground()V

    .line 655
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    goto :goto_3

    .line 658
    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-eqz v3, :cond_b

    .line 660
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    .line 661
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 665
    :cond_5
    const/4 v0, 0x0

    .line 666
    .local v0, "divider":Landroid/view/View;
    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_7

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_7

    if-eqz v16, :cond_6

    goto :goto_4

    .line 675
    :cond_6
    const v2, 0x1020468

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 667
    :cond_7
    :goto_4
    if-nez v16, :cond_8

    .line 668
    const v2, 0x1020467

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 670
    :cond_8
    if-nez v0, :cond_9

    .line 671
    const v2, 0x1020466

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 679
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 681
    .end local v0    # "divider":Landroid/view/View;
    :cond_a
    goto :goto_6

    .line 682
    :cond_b
    if-eqz v5, :cond_c

    .line 683
    const v0, 0x1020455

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_c

    .line 685
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .end local v0    # "spacer":Landroid/view/View;
    :cond_c
    :goto_6
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v0, :cond_d

    .line 691
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 695
    :cond_d
    if-nez v16, :cond_11

    .line 696
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_e

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    goto :goto_7

    :cond_e
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 697
    .local v0, "content":Landroid/view/View;
    :goto_7
    if-eqz v0, :cond_11

    .line 698
    if-eqz v3, :cond_f

    .line 699
    const/16 v19, 0x1

    goto :goto_8

    .line 698
    :cond_f
    nop

    .line 699
    const/16 v19, 0x0

    :goto_8
    if-eqz v1, :cond_10

    const/4 v2, 0x2

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    or-int v2, v19, v2

    .line 700
    .local v2, "indicators":I
    move/from16 v20, v1

    const/4 v1, 0x3

    .end local v1    # "hasButtonPanel":Z
    .local v20, "hasButtonPanel":Z
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setScrollIndicators(II)V

    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "indicators":I
    goto :goto_a

    .line 705
    .end local v20    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_11
    move/from16 v20, v1

    .end local v1    # "hasButtonPanel":Z
    .restart local v20    # "hasButtonPanel":Z
    :goto_a
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    move/from16 v21, v3

    const v3, 0x101005d

    .end local v3    # "hasTopPanel":Z
    .local v21, "hasTopPanel":Z
    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 707
    .local v4, "a":Landroid/content/res/TypedArray;
    .local v22, "buttonPanel":Landroid/view/ViewGroup;
    move-object v0, v9

    move/from16 v17, v20

    move-object v1, v4

    .end local v20    # "hasButtonPanel":Z
    .local v17, "hasButtonPanel":Z
    move-object v2, v6

    move/from16 v18, v21

    move-object v3, v5

    .end local v21    # "hasTopPanel":Z
    .local v18, "hasTopPanel":Z
    move-object v9, v4

    move-object/from16 v19, v22

    move-object v4, v14

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v22    # "buttonPanel":Landroid/view/ViewGroup;
    .local v9, "a":Landroid/content/res/TypedArray;
    .local v19, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v20, v5

    move-object/from16 v5, v19

    .end local v5    # "contentPanel":Landroid/view/ViewGroup;
    .local v20, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v21, v6

    move/from16 v6, v18

    .end local v6    # "topPanel":Landroid/view/ViewGroup;
    .local v21, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v22, v7

    move/from16 v7, v16

    .end local v7    # "customButtonPanel":Landroid/view/View;
    .local v22, "customButtonPanel":Landroid/view/View;
    move-object/from16 v23, v8

    move/from16 v8, v17

    .end local v8    # "customContentPanel":Landroid/view/View;
    .local v23, "customContentPanel":Landroid/view/View;
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 709
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 710
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 206
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x111000a

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 207
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private showNubiaCenterTitleDivider()V
    .locals 2

    .line 1497
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x308007d

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1499
    .local v0, "nubiaDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustCenterDialogContent()V
    .locals 4

    .line 1455
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->isNubiaCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x308007e

    .line 1460
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1462
    .local v0, "contentPanel":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1465
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1467
    .local v2, "verMragin":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1468
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    .end local v0    # "contentPanel":Landroid/view/ViewGroup;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "verMragin":I
    :cond_1
    return-void
.end method

.method protected adjustCenterDialogTitle()V
    .locals 6

    .line 1473
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->isNubiaCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x308008d

    .line 1477
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1478
    .local v0, "nubia_topPanel":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x308007e

    .line 1479
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1480
    .local v1, "contentPanel":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x3080080

    .line 1481
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1482
    .local v2, "customPanel":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 1483
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 1485
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1488
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1490
    .local v4, "verMragin":I
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1491
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMragin":I
    :cond_1
    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 491
    packed-switch p1, :pswitch_data_0

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 493
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 497
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .line 477
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 478
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 479
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected hideNubiaButtonBackground()V
    .locals 3

    .line 1514
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 1515
    const v1, 0x308007c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1516
    .local v0, "nubiaButtonPanel":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 1517
    const v2, 0x3080079

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1518
    .local v1, "nubiaBoldDivider":Landroid/view/View;
    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 1519
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    :cond_0
    if-eqz v0, :cond_1

    .line 1522
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1524
    :cond_1
    return-void
.end method

.method public installContent()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 298
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 299
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 301
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 302
    return-void
.end method

.method public installContent(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 0
    .param p1, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 291
    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 293
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 505
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 510
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected resetNubiaAlertDialogLayout()V
    .locals 1

    .line 1527
    const v0, 0x30a000c

    iput v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 1528
    const v0, 0x30a002e

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 1529
    const v0, 0x30a0030

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1530
    const v0, 0x30a0031

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1531
    const v0, 0x30a002f

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 1532
    return-void
.end method

.method protected setAlertDialogLayout(I)V
    .locals 0
    .param p1, "redirectLayout"    # I

    .line 1447
    iput p1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 1448
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 405
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 409
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 413
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 414
    goto :goto_0

    .line 417
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 418
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 419
    goto :goto_0

    .line 422
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 423
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 424
    nop

    .line 429
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .line 387
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 388
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 326
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 327
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 439
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 441
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 457
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 460
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 461
    if-eqz p1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    :cond_1
    :goto_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .line 483
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 484
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 330
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 331
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    return-void
.end method

.method public setMessageHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    .line 346
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 337
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    .line 338
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 341
    :cond_0
    return-void
.end method

.method protected setNubiaButtonBackground(III)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "mid"    # I
    .param p3, "right"    # I

    .line 1535
    iput p1, p0, Lcom/android/internal/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1536
    iput p2, p0, Lcom/android/internal/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1537
    iput p3, p0, Lcom/android/internal/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1538
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 316
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 317
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 356
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 358
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 364
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 366
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 367
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 374
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 377
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 378
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 379
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 380
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 381
    return-void
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 898
    const/4 v0, 0x1

    .line 899
    .local v0, "BIT_BUTTON_POSITIVE":I
    const/4 v1, 0x2

    .line 900
    .local v1, "BIT_BUTTON_NEGATIVE":I
    const/4 v2, 0x4

    .line 901
    .local v2, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 902
    .local v3, "whichButtons":I
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 903
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_0

    .line 906
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 908
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 910
    or-int/2addr v3, v0

    .line 913
    :goto_0
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 914
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 917
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 919
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 922
    or-int/2addr v3, v1

    .line 925
    :goto_1
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 926
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 931
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 934
    or-int/2addr v3, v2

    .line 937
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v4}, Lnubia/widget/IDialog;->isResetDialogButtonStyle()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 938
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->resetDialogButtonStyle()V

    .line 942
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 947
    if-ne v3, v0, :cond_4

    .line 948
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 949
    :cond_4
    if-ne v3, v1, :cond_5

    .line 950
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 951
    :cond_5
    if-ne v3, v2, :cond_6

    .line 952
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 956
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    const/4 v5, 0x1

    nop

    :cond_7
    move v4, v5

    .line 957
    .local v4, "hasButtons":Z
    if-nez v4, :cond_8

    .line 958
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 960
    :cond_8
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 841
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 842
    invoke-interface {v0}, Lnubia/widget/IDialog;->getScrollViewId()I

    move-result v0

    .line 841
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 844
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 852
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 853
    invoke-interface {v0}, Lnubia/widget/IDialog;->getMessageId()I

    move-result v0

    .line 852
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 856
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 857
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 866
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 873
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 874
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 875
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 876
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 879
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->showNubiaCenterTitleDivider()V

    .line 882
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_0

    .line 883
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 886
    :cond_4
    :goto_0
    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 755
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 760
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 769
    invoke-interface {v3}, Lnubia/widget/IDialog;->getTitleTemplateId()I

    move-result v3

    .line 768
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 772
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_1

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 776
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 777
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v2, :cond_3

    .line 785
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 786
    invoke-interface {v3}, Lnubia/widget/IDialog;->getAlertTitleId()I

    move-result v3

    .line 785
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 789
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v2, :cond_1

    .line 795
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 797
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 802
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 803
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 804
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 801
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 805
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->adjustCenterDialogTitle()V

    goto :goto_1

    .line 819
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 820
    invoke-interface {v3}, Lnubia/widget/IDialog;->getTitleTemplateId()I

    move-result v3

    .line 819
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 822
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->adjustCenterDialogContent()V

    .line 828
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->hideNubiaContentTitleDivider()V

    .line 832
    .end local v0    # "hasTextTitle":Z
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_1
    return-void
.end method
