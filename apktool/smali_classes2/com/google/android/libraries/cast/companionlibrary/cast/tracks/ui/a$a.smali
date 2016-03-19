.class final Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->b:Landroid/widget/TextView;

    .line 94
    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->c:Landroid/widget/RadioButton;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;Landroid/widget/TextView;Landroid/widget/RadioButton;B)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->c:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method
