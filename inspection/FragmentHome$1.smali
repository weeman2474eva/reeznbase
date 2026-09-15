.class Lcom/rmedia/rplayer/features/mainfragments/FragmentHome$1;
.super Lu62;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;


# direct methods
.method public constructor <init>(Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;Z)V
    .locals 0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/mainfragments/FragmentHome$1;->this$0:Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;

    invoke-direct {p0, p2}, Lu62;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu62;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/mainfragments/FragmentHome$1;->this$0:Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Le72;

    move-result-object v0

    invoke-virtual {v0}, Le72;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu62;->setEnabled(Z)V

    return-void
.end method
