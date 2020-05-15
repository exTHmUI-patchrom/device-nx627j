.class final Landroid/view/textservice/SpellCheckerSession$InternalListener;
.super Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalListener"
.end annotation


# instance fields
.field private final mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;


# direct methods
.method public constructor <init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V
    .locals 0
    .param p1, "spellCheckerSessionListenerImpl"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 542
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;-><init>()V

    .line 543
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$InternalListener;->mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 544
    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 548
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$InternalListener;->mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    .line 549
    return-void
.end method
