.class public final Lcom/github/amlcurran/showcaseview/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomTheme:[I

.field public static final CustomTheme_showcaseViewStyle:I = 0x0

.field public static final ShowcaseView:[I

.field public static final ShowcaseView_sv_backgroundColor:I = 0x0

.field public static final ShowcaseView_sv_buttonBackgroundColor:I = 0x3

.field public static final ShowcaseView_sv_buttonForegroundColor:I = 0x4

.field public static final ShowcaseView_sv_buttonText:I = 0x5

.field public static final ShowcaseView_sv_detailTextAppearance:I = 0x6

.field public static final ShowcaseView_sv_detailTextColor:I = 0x1

.field public static final ShowcaseView_sv_showcaseColor:I = 0x8

.field public static final ShowcaseView_sv_tintButtonColor:I = 0x9

.field public static final ShowcaseView_sv_titleTextAppearance:I = 0x7

.field public static final ShowcaseView_sv_titleTextColor:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010073

    aput v2, v0, v1

    sput-object v0, Lcom/github/amlcurran/showcaseview/R$styleable;->CustomTheme:[I

    .line 65
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100d0
        0x7f0100d1
        0x7f0100d2
        0x7f0100d3
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
