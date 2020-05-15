.class public final synthetic Lcom/android/internal/app/-$$Lambda$EK3sgUmlvAVQupMeTV9feOrWuPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$EK3sgUmlvAVQupMeTV9feOrWuPE;->f$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    return-void
.end method


# virtual methods
.method public final onDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$EK3sgUmlvAVQupMeTV9feOrWuPE;->f$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
