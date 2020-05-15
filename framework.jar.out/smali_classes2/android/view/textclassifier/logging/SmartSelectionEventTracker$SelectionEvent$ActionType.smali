.class public interface abstract annotation Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent$ActionType;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ActionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ABANDON:I = 0x6b

.field public static final COPY:I = 0x65

.field public static final CUT:I = 0x67

.field public static final DRAG:I = 0x6a

.field public static final OTHER:I = 0x6c

.field public static final OVERTYPE:I = 0x64

.field public static final PASTE:I = 0x66

.field public static final RESET:I = 0xc9

.field public static final SELECT_ALL:I = 0xc8

.field public static final SHARE:I = 0x68

.field public static final SMART_SHARE:I = 0x69
