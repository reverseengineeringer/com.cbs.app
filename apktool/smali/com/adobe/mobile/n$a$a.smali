.class final Lcom/adobe/mobile/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/adobe/mobile/n;


# direct methods
.method public constructor <init>(Lcom/adobe/mobile/n;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/mobile/n$a$a;->a:Lcom/adobe/mobile/n;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adobe/mobile/n$a$a;->a:Lcom/adobe/mobile/n;

    invoke-virtual {v0}, Lcom/adobe/mobile/n;->e()V

    .line 210
    iget-object v0, p0, Lcom/adobe/mobile/n$a$a;->a:Lcom/adobe/mobile/n;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/mobile/n;->f:Z

    .line 211
    return-void
.end method
