.class public final synthetic Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/accessibilityservice/AccessibilityButtonController;

.field private final synthetic f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iput-object p2, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    iput-boolean p3, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iget-object v1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    iget-boolean v2, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityButtonController;->lambda$dispatchAccessibilityButtonAvailabilityChanged$1(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V

    return-void
.end method
