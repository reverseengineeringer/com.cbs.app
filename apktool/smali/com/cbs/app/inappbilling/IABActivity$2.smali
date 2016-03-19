.class final Lcom/cbs/app/inappbilling/IABActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/inappbilling/IABActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$2;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$2;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->a()V

    .line 68
    return-void
.end method
