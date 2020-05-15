.class interface abstract annotation Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent$EventType;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "EventType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final AUTO_SELECTION:I = 0x5

.field public static final SELECTION_MODIFIED:I = 0x2

.field public static final SELECTION_STARTED:I = 0x1

.field public static final SMART_SELECTION_MULTI:I = 0x4

.field public static final SMART_SELECTION_SINGLE:I = 0x3
