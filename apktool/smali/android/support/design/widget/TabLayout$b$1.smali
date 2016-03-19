.class final Landroid/support/design/widget/TabLayout$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$b;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/support/design/widget/TabLayout$b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$b;IIII)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$b$1;->e:Landroid/support/design/widget/TabLayout$b;

    iput p2, p0, Landroid/support/design/widget/TabLayout$b$1;->a:I

    iput p3, p0, Landroid/support/design/widget/TabLayout$b$1;->b:I

    iput p4, p0, Landroid/support/design/widget/TabLayout$b$1;->c:I

    iput p5, p0, Landroid/support/design/widget/TabLayout$b$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/q;)V
    .locals 5

    .prologue
    .line 1636
    invoke-virtual {p1}, Landroid/support/design/widget/q;->f()F

    move-result v0

    .line 1637
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$b$1;->e:Landroid/support/design/widget/TabLayout$b;

    iget v2, p0, Landroid/support/design/widget/TabLayout$b$1;->a:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$b$1;->b:I

    invoke-static {v2, v3, v0}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$b$1;->c:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$b$1;->d:I

    invoke-static {v3, v4, v0}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/support/design/widget/TabLayout$b;->a(Landroid/support/design/widget/TabLayout$b;II)V

    .line 1640
    return-void
.end method
