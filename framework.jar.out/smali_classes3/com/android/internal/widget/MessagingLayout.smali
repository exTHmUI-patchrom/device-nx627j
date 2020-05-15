.class public Lcom/android/internal/widget/MessagingLayout;
.super Landroid/widget/FrameLayout;
.source "MessagingLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final COLOR_SHIFT_AMOUNT:F = 60.0f

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

.field private static final REMOVE_MESSAGE:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private mAvatarSize:I

.field private mConversationTitle:Ljava/lang/CharSequence;

.field private mDisplayImagesAtEnd:Z

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOneToOne:Z

.field private mLayoutColor:I

.field private mMessageTextColor:I

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mNameReplacement:Ljava/lang/CharSequence;

.field private mPaint:Landroid/graphics/Paint;

.field private mSenderTextColor:I

.field private mShowHistoricMessages:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTitleView:Landroid/widget/TextView;

.field private mUser:Landroid/app/Person;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    const-string v0, "[\\p{C}\\p{Z}]"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "[!@#$%&*()_+=|<>?{}\\[\\]~-]"

    .line 71
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    sget-object v0, Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->REMOVE_MESSAGE:Ljava/util/function/Consumer;

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v3, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MessagingLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MessagingLayout;

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addMessagesToGroups(Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 380
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/MessagingLayout;->findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 387
    invoke-direct {p0, v0, v1, p3}, Lcom/android/internal/widget/MessagingLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 388
    return-void
.end method

.method private addRemoteInputHistoryToMessages(Ljava/util/List;[Ljava/lang/CharSequence;)V
    .locals 9
    .param p2, "remoteInputHistory"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 173
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 177
    aget-object v7, p2, v0

    .line 178
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v5, v1

    check-cast v5, Landroid/app/Person;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v7    # "message":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 174
    :cond_2
    :goto_1
    return-void
.end method

.method private bind(Ljava/util/List;Ljava/util/List;Z)V
    .locals 5
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;Z)V"
        }
    .end annotation

    .line 187
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .local p2, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    .local v2, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-direct {p0, v0, v1, p3}, Lcom/android/internal/widget/MessagingLayout;->addMessagesToGroups(Ljava/util/List;Ljava/util/List;Z)V

    .line 195
    invoke-direct {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 198
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    sget-object v4, Lcom/android/internal/widget/MessagingLayout;->REMOVE_MESSAGE:Ljava/util/function/Consumer;

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 199
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    sget-object v4, Lcom/android/internal/widget/MessagingLayout;->REMOVE_MESSAGE:Ljava/util/function/Consumer;

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 201
    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 202
    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 205
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateTitleAndNamesDisplay()V

    .line 206
    return-void
.end method

.method private createGroupViews(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;Z)V"
        }
    .end annotation

    .line 392
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p2, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    const/4 v0, 0x0

    move v1, v0

    .local v1, "groupIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 394
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 395
    .local v2, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v3, 0x0

    .line 397
    .local v3, "newGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "messageIndex":I
    :goto_1
    if-ltz v4, :cond_1

    .line 398
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 399
    .local v6, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v3

    .line 400
    if-eqz v3, :cond_0

    .line 401
    goto :goto_2

    .line 397
    .end local v6    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 404
    .end local v4    # "messageIndex":I
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 405
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v4}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v3

    .line 406
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/MessagingLayout;->mDisplayImagesAtEnd:Z

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setDisplayImagesAtEnd(Z)V

    .line 409
    iget v4, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 410
    iget v4, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    invoke-virtual {v3, v4, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 411
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    .line 412
    .local v4, "sender":Landroid/app/Person;
    const/4 v6, 0x0

    .line 413
    .local v6, "nameOverride":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v4, v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 414
    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 416
    :cond_3
    invoke-virtual {v3, v4, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v1, v7, :cond_4

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    move v5, v0

    :goto_3
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 418
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-eq v5, v1, :cond_5

    .line 421
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 422
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 424
    :cond_5
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    .line 393
    .end local v2    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v3    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "sender":Landroid/app/Person;
    .end local v6    # "nameOverride":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 426
    .end local v1    # "groupIndex":I
    :cond_6
    return-void
.end method

.method private createMessages(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .param p2, "historic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 466
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 468
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 469
    .local v2, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-direct {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 470
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    if-nez v3, :cond_0

    .line 471
    invoke-static {p0, v2}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 473
    :cond_0
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 474
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v2    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 4
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 480
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 482
    .local v2, "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 484
    return-object v2

    .line 480
    .end local v2    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 489
    .local v1, "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 491
    return-object v1

    .line 487
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private findColor(Ljava/lang/CharSequence;I)I
    .locals 11
    .param p1, "senderName"    # Ljava/lang/CharSequence;
    .param p2, "layoutColor"    # I

    .line 328
    invoke-static {p2}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    .line 329
    .local v0, "luminance":D
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 332
    .local v2, "shift":F
    float-to-double v3, v2

    const-wide v5, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double v7, v5, v0

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float v2, v3

    .line 333
    float-to-double v3, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v0

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v2, v3

    .line 334
    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    move-result v3

    return v3
.end method

.method private findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p3, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p4, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    const/4 v0, 0x0

    .line 432
    .local v0, "currentSenderKey":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 433
    .local v1, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 434
    .local v2, "histSize":I
    const/4 v3, 0x0

    move-object v4, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "currentSenderKey":Ljava/lang/CharSequence;
    .local v4, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v0, v5, :cond_6

    .line 436
    if-ge v0, v2, :cond_0

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    .local v5, "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_1

    .line 439
    .end local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_0
    sub-int v5, v0, v2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    .line 441
    .restart local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    :goto_1
    const/4 v6, 0x1

    if-nez v4, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v3

    .line 442
    .local v7, "isNewGroup":Z
    :goto_2
    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    .line 443
    .local v8, "sender":Landroid/app/Person;
    if-nez v8, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    .line 444
    :cond_2
    invoke-virtual {v8}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "key":Ljava/lang/CharSequence;
    :goto_3
    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v6, v10

    or-int/2addr v6, v7

    .line 446
    .end local v7    # "isNewGroup":Z
    .local v6, "isNewGroup":Z
    if-eqz v6, :cond_5

    .line 447
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 448
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    if-nez v8, :cond_4

    .line 450
    iget-object v8, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 452
    :cond_4
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    move-object v1, v9

    .line 455
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v6    # "isNewGroup":Z
    .end local v8    # "sender":Landroid/app/Person;
    .end local v9    # "key":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private findNameSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "existingName"    # Ljava/lang/String;

    .line 339
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    return-object v1

    .line 344
    :cond_0
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$removeGroups$0(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 217
    return-void
.end method

.method private removeGroups(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 210
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 211
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 212
    .local v3, "group":Lcom/android/internal/widget/MessagingGroup;
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v4

    .line 214
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    new-instance v5, Lcom/android/internal/widget/-$$Lambda$MessagingLayout$AR_BLYGwVbm8HbmaOhECHwnOBBg;

    .local v5, "endRunnable":Ljava/lang/Runnable;
    invoke-direct {v5, p0, v3}, Lcom/android/internal/widget/-$$Lambda$MessagingLayout$AR_BLYGwVbm8HbmaOhECHwnOBBg;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V

    .line 219
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v6

    .line 220
    .local v6, "wasShown":Z
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 221
    if-eqz v6, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 222
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v7, v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 223
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 225
    :cond_0
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 227
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 210
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v5    # "endRunnable":Ljava/lang/Runnable;
    .end local v6    # "wasShown":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private updateHistoricMessageVisibility()V
    .locals 12

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 504
    .local v0, "numHistoric":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v0, :cond_1

    .line 505
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 506
    .local v4, "existing":Lcom/android/internal/widget/MessagingMessage;
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_0

    move v3, v1

    nop

    :cond_0
    invoke-interface {v4, v3}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 504
    .end local v4    # "existing":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 509
    .local v2, "numGroups":I
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 510
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 511
    .local v5, "group":Lcom/android/internal/widget/MessagingGroup;
    const/4 v6, 0x0

    .line 512
    .local v6, "visibleChildren":I
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v7

    .line 513
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 514
    .local v8, "numGroupMessages":I
    move v9, v6

    move v6, v1

    .local v6, "j":I
    .local v9, "visibleChildren":I
    :goto_2
    if-ge v6, v8, :cond_3

    .line 515
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingMessage;

    .line 516
    .local v10, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v10}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_2

    .line 517
    add-int/lit8 v9, v9, 0x1

    .line 514
    .end local v10    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 520
    .end local v6    # "j":I
    :cond_3
    if-lez v9, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 521
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_3

    .line 522
    :cond_4
    if-nez v9, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_5

    .line 523
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 509
    .end local v5    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v8    # "numGroupMessages":I
    .end local v9    # "visibleChildren":I
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 526
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private updateTitleAndNamesDisplay()V
    .locals 11

    .line 234
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 235
    .local v0, "uniqueNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 236
    .local v1, "uniqueCharacters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Character;Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 237
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingGroup;

    .line 238
    .local v4, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 239
    .local v5, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    goto :goto_1

    .line 242
    :cond_0
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 244
    sget-object v6, Lcom/android/internal/widget/MessagingLayout;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 245
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "pureSenderName":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 247
    .local v7, "c":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 251
    .local v8, "existingName":Ljava/lang/CharSequence;
    if-eqz v8, :cond_1

    .line 252
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/widget/MessagingLayout;->findNameSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/widget/MessagingLayout;->findNameSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v8    # "existingName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 257
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v1, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v4    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "pureSenderName":Ljava/lang/String;
    .end local v7    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 265
    .local v3, "cachedAvatars":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;>;"
    move v4, v2

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 267
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 268
    .local v5, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move v6, v2

    .line 269
    .local v6, "isOwnMessage":Z
    :goto_3
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 270
    .local v7, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v8, :cond_6

    if-nez v6, :cond_6

    .line 272
    goto :goto_4

    .line 274
    :cond_6
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 275
    .local v8, "symbol":Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 277
    .local v9, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-eqz v9, :cond_7

    .line 278
    invoke-virtual {v3, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v5    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v6    # "isOwnMessage":Z
    .end local v7    # "senderName":Ljava/lang/CharSequence;
    .end local v8    # "symbol":Ljava/lang/String;
    .end local v9    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 282
    .end local v4    # "i":I
    :cond_8
    nop

    .local v2, "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 284
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingGroup;

    .line 285
    .local v4, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 286
    .local v5, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 287
    goto :goto_6

    .line 289
    :cond_9
    iget-boolean v6, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v6, v7, :cond_a

    .line 290
    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_6

    .line 292
    :cond_a
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    .line 293
    .local v6, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-nez v6, :cond_b

    .line 294
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/internal/widget/MessagingLayout;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 296
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_b
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v4, v6, v5, v7, v8}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 282
    .end local v4    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 302
    .end local v2    # "i":I
    :cond_d
    return-void
.end method


# virtual methods
.method public createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 9
    .param p1, "senderName"    # Ljava/lang/CharSequence;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "layoutColor"    # I

    .line 305
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/internal/widget/MessagingLayout;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 306
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarSize:I

    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 315
    .local v2, "radius":F
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/MessagingLayout;->findColor(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 316
    .local v4, "color":I
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 318
    invoke-static {v4}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v5, v7

    const/4 v6, 0x1

    if-lez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 319
    .local v5, "needDarkText":Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    const/high16 v8, -0x1000000

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v6, :cond_3

    iget v6, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarSize:I

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    :goto_2
    mul-float/2addr v6, v8

    goto :goto_3

    :cond_3
    iget v6, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarSize:I

    int-to-float v6, v6

    const v8, 0x3e99999a    # 0.3f

    goto :goto_2

    :goto_3
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v3

    sub-float v3, v2, v6

    float-to-int v3, v3

    .line 322
    .local v3, "yPos":I
    int-to-float v6, v3

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 323
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    return-object v6

    .line 307
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "radius":F
    .end local v3    # "yPos":I
    .end local v4    # "color":I
    .end local v5    # "needDarkText":Z
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10805ad

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 309
    .local v0, "avatarIcon":Landroid/graphics/drawable/Icon;
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/MessagingLayout;->findColor(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 310
    return-object v0
.end method

.method public getMessagingGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 120
    const v0, 0x1020345

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingLinearLayout;->setMessagingLayout(Lcom/android/internal/widget/MessagingLayout;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 125
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 128
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mTitleView:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050115

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarSize:I

    .line 130
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 131
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 530
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MessagingLayout$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MessagingLayout$1;-><init>(Lcom/android/internal/widget/MessagingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 550
    :cond_0
    return-void
.end method

.method public setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 137
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 151
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 152
    .local v0, "messages":[Landroid/os/Parcelable;
    nop

    .line 153
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v2, "android.messages.historic"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 155
    .local v2, "histMessages":[Landroid/os/Parcelable;
    nop

    .line 156
    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    .line 157
    .local v3, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v4, "android.messagingUser"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    .line 158
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 159
    const v4, 0x102028a

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 160
    .local v4, "headerText":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 163
    :cond_0
    const-string v5, "android.remoteInputHistory"

    .line 164
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 163
    invoke-direct {p0, v1, v5}, Lcom/android/internal/widget/MessagingLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Ljava/lang/CharSequence;)V

    .line 165
    const-string v5, "android.remoteInputSpinner"

    const/4 v6, 0x0

    .line 166
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 167
    .local v5, "showSpinner":Z
    invoke-direct {p0, v1, v3, v5}, Lcom/android/internal/widget/MessagingLayout;->bind(Ljava/util/List;Ljava/util/List;Z)V

    .line 168
    return-void
.end method

.method public setDisplayImagesAtEnd(Z)V
    .locals 0
    .param p1, "atEnd"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 146
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mDisplayImagesAtEnd:Z

    .line 147
    return-void
.end method

.method public setIsOneToOne(Z)V
    .locals 0
    .param p1, "oneToOne"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 354
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    .line 355
    return-void
.end method

.method public setLayoutColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 349
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    .line 350
    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 364
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    .line 365
    return-void
.end method

.method public setNameReplacement(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "nameReplacement"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 142
    return-void
.end method

.method public setSenderTextColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 359
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    .line 360
    return-void
.end method

.method public setUser(Landroid/app/Person;)V
    .locals 2
    .param p1, "user"    # Landroid/app/Person;

    .line 368
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10805ad

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 372
    .local v0, "userIcon":Landroid/graphics/drawable/Icon;
    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 373
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 375
    .end local v0    # "userIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    return-void
.end method

.method public showHistoricMessages(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 498
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    .line 499
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 500
    return-void
.end method
