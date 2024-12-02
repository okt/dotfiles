from kitty.boss import get_boss
from kitty.fast_data_types import Screen
from kitty.tab_bar import DrawData, TabBarData, ExtraData, as_rgb

def draw_tab(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_title_length: int,
    index: int,
    is_last: bool,
    extra_data: ExtraData,
) -> int:
    active_symbol = '🮆🮆 '
    inactive_symbol = '▀▀ '

    symbol = active_symbol if tab.is_active else inactive_symbol

    tab_content = f'{symbol}'

    if tab.needs_attention:
        screen.cursor.fg = as_rgb(int("F2A7A7", 16))
    elif tab.is_active:
        screen.cursor.fg = as_rgb(int("ABEBE2", 16))
    else:
        screen.cursor.fg = as_rgb(int("494949", 16))

    screen.draw(tab_content)

    return screen.cursor.x
