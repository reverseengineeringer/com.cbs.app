.class final Landroid/support/design/internal/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/internal/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/view/menu/MenuItemImpl;


# direct methods
.method private constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Landroid/support/design/internal/b$f;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 602
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;B)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0, p1}, Landroid/support/design/internal/b$f;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/design/internal/b$f;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method
