from pytest_bdd import given, when, then, scenario, parsers
import pytest

@scenario('../features/pre-flight-weather.feature', 'Successful pre-launch with varying weather conditions')
def test_rocket_weather():
    pass

@pytest.fixture
def launch_context():
    return {}

@given('the rocket is on the launch pad')
def rocket_on_launch_pad(launch_context):
    launch_context['rocket_position'] = 'launch_pad'


@given('the fuel tanks are fully loaded')
def fuel_tanks_loaded(launch_context):
    launch_context['fuel_status'] = 'full'

@given(parsers.parse('the weather condition is "{weather_condition}"'))
def weather_condition(launch_context, weather_condition):
    launch_context['weather'] = weather_condition

@when('the mission controller runs the pre-launch checklist')
def run_pre_launch_checklist(launch_context):
    checklist_passed = (
        launch_context.get('rocket_position') == 'launch_pad' and
        launch_context.get('fuel_status') == 'full' and
        launch_context.get('weather') in ['clear', 'winds below 10m/s']
    )
    launch_context['checklist_result'] == 'green' if checklist_passed else 'red'

@then('all systems should report "green"')
def systems_report_green(launch_context):
    assert launch_context['checklist_result'] == 'green', f"Expected 'green', got {launch_context['checklist_result']}"

@then('the launch countdown should begin')
def launch_countdown_begins(launch_context):
    # Simulate countdown starting if checklist passed
    assert launch_context['checklist_result'] == 'green'
    launch_context['countdown_started'] = True
    assert launch_context['countdown_started'], "Countdown did not start"