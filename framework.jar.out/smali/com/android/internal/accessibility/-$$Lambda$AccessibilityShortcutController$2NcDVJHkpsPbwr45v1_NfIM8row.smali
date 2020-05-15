.class public final synthetic Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iput p2, p0, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$createShortcutWarningDialog$0(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;I)V

    return-void
.end method
