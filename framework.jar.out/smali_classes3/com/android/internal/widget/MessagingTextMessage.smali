.class public Lcom/android/internal/widget/MessagingTextMessage;
.super Lcom/android/internal/widget/ImageFloatingTextView;
.source "MessagingTextMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/internal/widget/MessagingTextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 63
    return-void
.end method

.method static createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 5
    .param p0, "layout"    # Lcom/android/internal/widget/MessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 80
    .local v0, "messagingLinearLayout":Lcom/android/internal/widget/MessagingLinearLayout;
    sget-object v1, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    .line 81
    .local v1, "createdMessage":Lcom/android/internal/widget/MessagingTextMessage;
    if-nez v1, :cond_0

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109009e

    const/4 v4, 0x0

    .line 83
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    .line 87
    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingTextMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 89
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 90
    return-object v1
.end method

.method public static dropCache()V
    .locals 2

    .line 99
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 100
    return-void
.end method


# virtual methods
.method public getConsumedLines()I
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLayoutHeight()I
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 133
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    return v1
.end method

.method public getMeasuredType()I
    .locals 5

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getMeasuredHeight()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayoutHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 106
    .local v0, "measuredTooSmall":Z
    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 107
    return v1

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 110
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_2

    .line 111
    return v1

    .line 113
    :cond_2
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 114
    return v3

    .line 116
    :cond_3
    return v2
.end method

.method public getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 95
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTextColor(I)V

    .line 142
    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMaxLines(I)V

    .line 124
    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 73
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
