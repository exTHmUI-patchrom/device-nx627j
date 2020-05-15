.class public Landroid/widget/MediaControlView2;
.super Landroid/media/update/ViewGroupHelper;
.source "MediaControlView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaControlView2$OnFullScreenListener;,
        Landroid/widget/MediaControlView2$Button;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/update/ViewGroupHelper<",
        "Landroid/media/update/MediaControlView2Provider;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUTTON_ASPECT_RATIO:I = 0xa

.field public static final BUTTON_FFWD:I = 0x2

.field public static final BUTTON_FULL_SCREEN:I = 0x7

.field public static final BUTTON_MUTE:I = 0x9

.field public static final BUTTON_NEXT:I = 0x4

.field public static final BUTTON_OVERFLOW:I = 0x8

.field public static final BUTTON_PLAY_PAUSE:I = 0x1

.field public static final BUTTON_PREV:I = 0x5

.field public static final BUTTON_REW:I = 0x3

.field public static final BUTTON_SETTINGS:I = 0xb

.field public static final BUTTON_SUBTITLE:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 153
    new-instance v1, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;

    invoke-direct {v1, p2, p3, p4}, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;-><init>(Landroid/util/AttributeSet;II)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;-><init>(Landroid/media/update/ViewGroupHelper$ProviderCreator;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 158
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/MediaControlView2Provider;

    invoke-interface {v0, p2, p3, p4}, Landroid/media/update/MediaControlView2Provider;->initialize(Landroid/util/AttributeSet;II)V

    .line 159
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/util/AttributeSet;IILandroid/media/update/ViewGroupHelper;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;)Landroid/media/update/MediaControlView2Provider;
    .locals 7
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "instance"    # Landroid/media/update/ViewGroupHelper;
    .param p4, "superProvider"    # Landroid/media/update/ViewGroupProvider;
    .param p5, "privateProvider"    # Landroid/media/update/ViewGroupProvider;

    .line 154
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Landroid/widget/MediaControlView2;

    move-object v2, p4

    move-object v3, p5

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/media/update/StaticProvider;->createMediaControlView2(Landroid/widget/MediaControlView2;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;Landroid/util/AttributeSet;II)Landroid/media/update/MediaControlView2Provider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 216
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    move-object v1, v0

    check-cast v1, Landroid/media/update/MediaControlView2Provider;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/media/update/MediaControlView2Provider;->onLayout_impl(ZIIII)V

    .line 217
    return-void
.end method

.method public requestPlayButtonFocus()V
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/MediaControlView2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaControlView2Provider;->requestPlayButtonFocus_impl()V

    .line 212
    return-void
.end method

.method public setButtonVisibility(II)V
    .locals 1
    .param p1, "button"    # I
    .param p2, "visibility"    # I

    .line 204
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/MediaControlView2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaControlView2Provider;->setButtonVisibility_impl(II)V

    .line 205
    return-void
.end method

.method public setController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 180
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/MediaControlView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaControlView2Provider;->setController_impl(Landroid/media/session/MediaController;)V

    .line 181
    return-void
.end method

.method public setMediaSessionToken(Landroid/media/SessionToken2;)V
    .locals 1
    .param p1, "token"    # Landroid/media/SessionToken2;

    .line 165
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/MediaControlView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaControlView2Provider;->setMediaSessionToken_impl(Landroid/media/SessionToken2;)V

    .line 166
    return-void
.end method

.method public setOnFullScreenListener(Landroid/widget/MediaControlView2$OnFullScreenListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/MediaControlView2$OnFullScreenListener;

    .line 173
    iget-object v0, p0, Landroid/widget/MediaControlView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/MediaControlView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaControlView2Provider;->setOnFullScreenListener_impl(Landroid/widget/MediaControlView2$OnFullScreenListener;)V

    .line 174
    return-void
.end method
