.class final Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment$4;->a:Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    return-void
.end method
