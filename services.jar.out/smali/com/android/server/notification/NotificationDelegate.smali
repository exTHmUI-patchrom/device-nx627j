.class public interface abstract Lcom/android/server/notification/NotificationDelegate;
.super Ljava/lang/Object;
.source "NotificationDelegate.java"


# virtual methods
.method public abstract clearEffects()V
.end method

.method public abstract onClearAll(III)V
.end method

.method public abstract onHeadsUpDismiss(Ljava/lang/String;)V
.end method

.method public abstract onNotificationActionClick(IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onNotificationDirectReplied(Ljava/lang/String;)V
.end method

.method public abstract onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method public abstract onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
.end method

.method public abstract onNotificationSettingsViewed(Ljava/lang/String;)V
.end method

.method public abstract onNotificationSmartRepliesAdded(Ljava/lang/String;I)V
.end method

.method public abstract onNotificationSmartReplySent(Ljava/lang/String;I)V
.end method

.method public abstract onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onPanelHidden()V
.end method

.method public abstract onPanelRevealed(ZI)V
.end method

.method public abstract onSetDisabled(I)V
.end method
